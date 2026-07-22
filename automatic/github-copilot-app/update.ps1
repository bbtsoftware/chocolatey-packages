import-module au

$ErrorActionPreference = 'Stop'

Import-Module "$PSScriptRoot\..\..\scripts\au_extensions.psm1" -Force -ErrorAction Stop

$repoOwner = 'github'
$repoName = 'app'
$assetName = 'GitHub-Copilot-windows-x64.msi'

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
        throw "Asset '$Name' wurde im aktuellen GitHub Release nicht gefunden."
    }

    return $asset
}

function Get-ChecksumFromGitHubAssetDigest {
    param(
        [Parameter(Mandatory = $true)]
        $Asset
    )

    if (-not $Asset.digest) {
        throw 'Das GitHub Asset enthaelt kein digest-Feld.'
    }

    if ($Asset.digest -notmatch '^sha256:([a-fA-F0-9]{64})$') {
        throw "Das digest-Feld hat nicht das erwartete SHA256-Format: $($Asset.digest)"
    }

    return $Matches[1].ToLowerInvariant()
}

function global:au_GetLatest {
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
        URL64 = $downloadUrl
        Checksum64 = $checksum
        ChecksumType64 = 'sha256'
        ReleaseNotes = $releaseNotesUrl
    }
}

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            '(?m)^(\s*url\s*=\s*)([''"]).*?\2' = "`$1'$($Latest.URL64)'"
            '(?m)^(\s*checksum\s*=\s*)([''"]).*?\2' = "`$1'$($Latest.Checksum64)'"
        }
        'tools\chocolateyUninstall.ps1' = @{
            '(?m)(msiexec\.exe\s+/x\s+")([^"]+)(")' = "`$1$($Latest.URL64)`$3"
        }
        'github-copilot-app.nuspec' = @{
            '(?m)(<releaseNotes>).*?(</releaseNotes>)' = "`$1$($Latest.ReleaseNotes)`$2"
        }
    }
}

update -ChecksumFor none
