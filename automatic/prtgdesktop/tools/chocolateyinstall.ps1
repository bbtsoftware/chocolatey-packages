$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/24.9.0/32bit/prtg-desktop-offline-24.9.0-32bit.exe"
  checksum       = "85967e2feca6678c30cd2c5222f978c5ed774bc0"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/24.9.0/64bit/prtg-desktop-offline-24.9.0-64bit.exe"
  checksum64     = "4d681bf7c6ccef94256c167cc3f22a308f8c3cb3"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
