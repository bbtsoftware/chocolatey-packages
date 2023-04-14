import-module au
import-module PowerShellForGitHub

$repoOwner = 'gulpjs'
$repoName = 'gulp-cli'

function global:au_SearchReplace {
    $version = [Version]$Latest.Version
    $packageVersion = [string]$version.Major + "." + $version.Minor + "." + $version.Build

    @{
        'tools\ChocolateyInstall.ps1' = @{
            "(^[$]version\s*=\s*)('.*')" = "`$1'$($packageVersion)'"
        }
     }
}

function global:au_GetLatest {
    $release = Get-GitHubRelease -OwnerName $repoOwner -RepositoryName $repoName -Latest
    $version = $release.tag_name
    if ($version.StartsWith('v')) {
      $version = $version.Substring(1)
    }

    @{
      Version   = $version
    }
}

update -ChecksumFor none
