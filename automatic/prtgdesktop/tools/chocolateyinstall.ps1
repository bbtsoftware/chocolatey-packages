$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.10.0/32bit/prtg-desktop-offline-23.10.0-32bit.exe"
  checksum       = "64dd16dd7dc2dd109fff8e4c26f7ef9d2435264e"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.10.0/64bit/prtg-desktop-offline-23.10.0-64bit.exe"
  checksum64     = "34b76b4cca23c8a02d5e9e834b2ee3b4450aea00"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
