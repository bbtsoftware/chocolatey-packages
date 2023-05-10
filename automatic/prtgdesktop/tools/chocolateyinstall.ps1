﻿$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.4.0/32bit/prtg-desktop-offline-23.4.0-32bit.exe"
  checksum       = "86bb4440485590d1cfa143765283e31b176774e4"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.4.0/64bit/prtg-desktop-offline-23.4.0-64bit.exe"
  checksum64     = "f571a2e315bbcd5360892cba6ca4137dcdd60d09"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
