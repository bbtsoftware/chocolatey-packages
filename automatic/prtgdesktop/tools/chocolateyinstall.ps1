$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.1.0/32bit/prtg-desktop-offline-23.1.0-32bit.exe"
  checksum       = "3738c418c68d1d9b59c7cd98b77b78636cbf1a6f"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.1.0/64bit/prtg-desktop-offline-23.1.0-64bit.exe"
  checksum64     = "60e21947c5ef8f5831b9878779ccc8fa84dbf2d2"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
