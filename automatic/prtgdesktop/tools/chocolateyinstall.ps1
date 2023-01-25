$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.17.0/32bit/prtg-desktop-offline-22.17.0-32bit.exe"
  checksum       = "cafcc75f7c4b7d701a7e34495366062bbdde8af9"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.17.0/64bit/prtg-desktop-offline-22.17.0-64bit.exe"
  checksum64     = "a80e3952375033a0e07e49694fbc51e80bbb53ac"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
