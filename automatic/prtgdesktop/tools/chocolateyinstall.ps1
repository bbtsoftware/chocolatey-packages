$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.7.0/32bit/prtg-desktop-offline-21.7.0-32bit.exe"
  checksum       = "6d090ac1d8f71b714fba7bbb0b1c6262471a4cc4"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.7.0/64bit/prtg-desktop-offline-21.7.0-64bit.exe"
  checksum64     = "8cd0406471509609f085221c85afb143406ba279"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
