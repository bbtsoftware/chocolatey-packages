$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.0.0/32bit/prtg-desktop-offline-23.0.0-32bit.exe"
  checksum       = "3efaa538b84bc58adee1286abc2802d0e838565e"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.0.0/64bit/prtg-desktop-offline-23.0.0-64bit.exe"
  checksum64     = "48028255ebc6ecc28cc1df7ecbb6b13967384ce9"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
