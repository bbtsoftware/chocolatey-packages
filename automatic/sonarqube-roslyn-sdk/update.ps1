import-module au

$releases = 'https://github.com/SonarSource/sonarqube-roslyn-sdk/releases'

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix -FileNameBase $Latest.FileName }

function global:au_SearchReplace {
  @{
    ".\legal\VERIFICATION.txt" = @{
      "(?i)(x64: ).*"             = "`${1}<$($Latest.URL32)>"
      "(?i)(checksum type:\s+).*" = "`${1} $($Latest.ChecksumType)"
      "(?i)(checksum64:).*"       = "`${1} $($Latest.Checksum)"
    }
    'tools\chocolateyInstall.ps1' = @{
      "(^[$]filePath\s*=\s*`"[$]toolsPath\\)(.*)`"" = "`$1$($Latest.FileName).$($Latest.FileType)`""
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

  $re      = 'SonarQube.Roslyn.SDK.*.zip'
  $url     = "https://github.com" + ($download_page.links | Where-Object href -match $re | Select-Object -First 1 -expand href)
  $version = $url -split '-' | select -Last 1
  $version = $version.replace(".zip", "")

  @{
    Version   = $version
    URL32     = $url
    Filename  = "SonarQube.Roslyn.SDK-${version}"
    FileType  = 'zip'
  }
}

update -ChecksumFor none
