$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.7.0/32bit/prtg-desktop-offline-23.7.0-32bit.exe"
  checksum       = "c8f25807e4b7bf0fb128ef63848eafd1cda25693"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.7.0/64bit/prtg-desktop-offline-23.7.0-64bit.exe"
  checksum64     = "d0e877117f21b1c36814324bf1469c3a60f302b0"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
