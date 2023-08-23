$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.9.0/32bit/prtg-desktop-offline-23.9.0-32bit.exe"
  checksum       = "94b71f485961bd4183d24c64c2d639e355018206"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.9.0/64bit/prtg-desktop-offline-23.9.0-64bit.exe"
  checksum64     = "d48de547b144aaebd362f216974b047084c20dd0"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
