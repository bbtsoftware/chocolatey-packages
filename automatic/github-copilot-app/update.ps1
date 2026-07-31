import-module au

$ErrorActionPreference = 'Stop'

Import-Module "$PSScriptRoot\..\..\scripts\au_extensions.psm1" -Force -ErrorAction Stop

$repoOwner = 'github'
$repoName = 'app'
$assetName = 'GitHub-Copilot-windows-x64.msi'

function Get-LatestReleaseData {
    $release = Get-GitHubLatestReleaseWithRetry `
        -Owner $repoOwner `
        -Repository $repoName

    $asset = Get-ReleaseAssetByName `
        -Release $release `
        -Name $assetName

    $version = $release.tag_name.TrimStart('v')
    $downloadUrl = $asset.browser_download_url
    $checksum = Get-ChecksumFromGitHubAssetDigest -Asset $asset
    $releaseNotesUrl = $release.html_url.Replace('/tag/', '#release-')

    @{
        Version = $version
        Url64 = $downloadUrl
        Checksum64 = $checksum
        ChecksumType64 = 'sha256'
        ReleaseNotes = $releaseNotesUrl
    }
}

function Set-InstallValuesFromLatest {
    param(
        [Parameter(Mandatory = $true)]
        [hashtable]$LatestData
    )

    $installScriptPath = Join-Path $PSScriptRoot 'tools\chocolateyInstall.ps1'
    $content = Get-Content -LiteralPath $installScriptPath -Raw

    $updated = $content
    $updated = $updated -replace '(?m)^(\s*url\s*=\s*)([''\"]).*?\2', "`$1`"$($LatestData.Url64)`""
    $updated = $updated -replace '(?m)^(\s*checksum\s*=\s*)([''\"]).*?\2', "`$1`"$($LatestData.Checksum64)`""

    if ($updated -ne $content) {
        Set-Content -LiteralPath $installScriptPath -Value $updated -Encoding UTF8
    }
}

function Get-ReleaseAssetByName {
    param(
        [Parameter(Mandatory = $true)]
        $Release,

        [Parameter(Mandatory = $true)]
        [string]$Name
    )

    $asset = $Release.assets |
        Where-Object { $_.name -eq $Name } |
        Select-Object -First 1

    if (-not $asset) {
        throw “Asset '$Name' was not found in the current GitHub release.”
    }

    return $asset
}

function Get-ChecksumFromGitHubAssetDigest {
    param(
        [Parameter(Mandatory = $true)]
        $Asset
    )

    if (-not $Asset.digest) {
        throw 'The GitHub asset does not contain a digest field.'
    }

    if ($Asset.digest -notmatch '^sha256:([a-fA-F0-9]{64})$') {
        throw "The digest field does not have the expected SHA256 format: $($Asset.digest)"
    }

    return $Matches[1].ToLowerInvariant()
}

function global:au_GetLatest {
    Get-LatestReleaseData
}

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            '(?m)^(\s*url\s*=\s*)([''"]).*?\2' = "`$1'$($Latest.Url64)'"
            '(?m)^(\s*checksum\s*=\s*)([''"]).*?\2' = "`$1'$($Latest.Checksum64)'"
        }
        'github-copilot-app.nuspec' = @{
            '(?m)(<releaseNotes>).*?(</releaseNotes>)' = "`$1$($Latest.ReleaseNotes)`$2"
        }
    }
}

$latestData = Get-LatestReleaseData
Set-InstallValuesFromLatest -LatestData $latestData

update -ChecksumFor none
