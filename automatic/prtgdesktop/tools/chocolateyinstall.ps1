$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.2.0/32bit/prtg-desktop-offline-23.2.0-32bit.exe"
  checksum       = "9d8e74b8c8c1e760ccec8295032f59ab5d8d0590"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.2.0/64bit/prtg-desktop-offline-23.2.0-64bit.exe"
  checksum64     = "ad54916253f1206741b487389d3e31ace7fbd4a5"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
