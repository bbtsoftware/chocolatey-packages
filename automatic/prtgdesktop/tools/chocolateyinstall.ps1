$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.3.0/32bit/prtg-desktop-offline-23.3.0-32bit.exe"
  checksum       = "a7e7368221b171a6d61d498131948741c2f54648"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.3.0/64bit/prtg-desktop-offline-23.3.0-64bit.exe"
  checksum64     = "0d47f387e8651d96781772a237bb36b0fe3d9f73"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
