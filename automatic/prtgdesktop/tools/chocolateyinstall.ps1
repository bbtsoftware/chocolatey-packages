$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.6.0/32bit/prtg-desktop-offline-22.6.0-32bit.exe"
  checksum       = "3bf624c48da3b88605c9427b032a2cfb9bfdbdc3"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.6.0/64bit/prtg-desktop-offline-22.6.0-64bit.exe"
  checksum64     = "1a7e6a6102c1060a98da777c209a8b121c613e45"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
