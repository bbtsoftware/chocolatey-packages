$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.4.2/32bit/prtg-desktop-offline-22.4.2-32bit.exe"
  checksum       = "5ddf432b71b97be5b16a7f164e1f67c5b6d615af"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.4.2/64bit/prtg-desktop-offline-22.4.2-64bit.exe"
  checksum64     = "ac568692050b3fd2719737a626fd0f0d54b27ba3"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
