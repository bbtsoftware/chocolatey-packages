$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.14.0/32bit/prtg-desktop-offline-23.14.0-32bit.exe"
  checksum       = "a99be67bd375cf01dceef2881b210e820d725c94"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.14.0/64bit/prtg-desktop-offline-23.14.0-64bit.exe"
  checksum64     = "8fdb7a714ce11a58bdfb27971d1333adbed1657a"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
