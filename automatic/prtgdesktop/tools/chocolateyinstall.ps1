$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/24.2.0/32bit/prtg-desktop-offline-24.2.0-32bit.exe"
  checksum       = "f98a5c323aa073fa69f2fd00322493f3d4e39267"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/24.2.0/64bit/prtg-desktop-offline-24.2.0-64bit.exe"
  checksum64     = "935b5261eaa53dd89b9b00d49d57a8a2b64fbf21"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
