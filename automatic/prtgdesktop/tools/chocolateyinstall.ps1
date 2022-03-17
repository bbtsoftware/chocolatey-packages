$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.3.0/32bit/prtg-desktop-offline-22.3.0-32bit.exe"
  checksum       = "1a11928f38d99de0263e6e9f89c7d5aca848d882"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.3.0/64bit/prtg-desktop-offline-22.3.0-64bit.exe"
  checksum64     = "f813f2e9037cebae11baea7e351957233cd7cc24"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
