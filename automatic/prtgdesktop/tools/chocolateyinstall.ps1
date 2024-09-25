$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/24.10.0/32bit/prtg-desktop-offline-24.10.0-32bit.exe"
  checksum       = "7b743c259ba1cd9614dd6c1fb67b799da5c6f8a9"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/24.10.0/64bit/prtg-desktop-offline-24.10.0-64bit.exe"
  checksum64     = "9a3b060e1ac1818779ca06bec82343a7d96e8afb"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
