$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.12.0/32bit/prtg-desktop-offline-23.12.0-32bit.exe"
  checksum       = "92bda4ffc1bb8433e2d013b32508469bbc8caebf"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.12.0/64bit/prtg-desktop-offline-23.12.0-64bit.exe"
  checksum64     = "8f38265bce9397b269f6a7068aeffb08c0d7df24"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
