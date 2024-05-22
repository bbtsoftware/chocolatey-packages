$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/24.5.0/32bit/prtg-desktop-offline-24.5.0-32bit.exe"
  checksum       = "99ea7e3797360408ebe7c6385bda47dc3c7fa525"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/24.5.0/64bit/prtg-desktop-offline-24.5.0-64bit.exe"
  checksum64     = "532674ef3fecfcf0c9a7242a8eecb33d6bb02276"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
