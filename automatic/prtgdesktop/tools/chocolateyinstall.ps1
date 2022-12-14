$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.16.1/32bit/prtg-desktop-offline-22.16.1-32bit.exe"
  checksum       = "95ab37550b7ef37b85e26b958d2aa29ed99bea44"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.16.1/64bit/prtg-desktop-offline-22.16.1-64bit.exe"
  checksum64     = "eb3b27f54c01b53ac23b96352cf341c1dda4fe95"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
