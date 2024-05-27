import-module au

$releases = 'https://marketplace.visualstudio.com/items?itemName=SSIS.MicrosoftDataToolsIntegrationServices'

function global:au_BeforeUpdate {
  $Latest.Checksum = Get-RemoteChecksum $Latest.Url32
  $Latest.ChecksumType = "sha256"
}

function global:au_SearchReplace {
  @{
    'tools\ChocolateyInstall.ps1' = @{
        "(\s*\-VsixUrl\s)'([^']+)'" = "`$1'$($Latest.URL32)'"
        "(\s*\-Checksum\s)'([^']+)'" = "`$1'$($Latest.Checksum)'"
        "(\s*\-ChecksumType\s)'([^']+)'" = "`$1'$($Latest.ChecksumType)'"
      }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

  $re = '/_apis/public/gallery/publishers/SSIS/vsextensions/MicrosoftDataToolsIntegrationServices/.+/vspackage'

  $url = $download_page.links | Where-Object href -match $re | Where-Object class -eq "install-button-container" | ForEach-Object { "https://marketplace.visualstudio.com" + $_.href  }
  $version = $url -split '/' | Select-Object -Last 1 -Skip 1

  # Write-Host "Links: " + $download_page.links
  # Write-Host "URL: " + $url
  # Write-Host "Version: " + $version

  @{
    Version   = $version
    URL32     = $url
  }
}

update -ChecksumFor none