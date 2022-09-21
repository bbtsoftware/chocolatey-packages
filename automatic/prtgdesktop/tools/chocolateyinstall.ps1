$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.12.0/32bit/prtg-desktop-offline-22.12.0-32bit.exe"
  checksum       = "46dc1b080053a3ce428b352aeb035d74c5726367"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.12.0/64bit/prtg-desktop-offline-22.12.0-64bit.exe"
  checksum64     = "3457f109bb906ce3907ed0c191d863d3ed9d644f"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
