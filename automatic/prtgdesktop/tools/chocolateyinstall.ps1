$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/20.14.0/32bit/prtg-desktop-offline-20.14.0-32bit.exe"
  checksum       = "18dd1f0115a0c7a3c59868287d32437fdf1be31e"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/20.14.0/64bit/prtg-desktop-offline-20.14.0-64bit.exe"
  checksum64     = "cab842c01ae31a4d6c03f005b974a207cdf96058"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
