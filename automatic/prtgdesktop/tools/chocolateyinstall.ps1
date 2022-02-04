$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.1.0/32bit/prtg-desktop-offline-22.1.0-32bit.exe"
  checksum       = "6b0437c8d95d13ad3f3b5146169ef39edfdd704c"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.1.0/64bit/prtg-desktop-offline-22.1.0-64bit.exe"
  checksum64     = "7f28626c033d72b1f599cf9c11c70f712c8b7feb"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
