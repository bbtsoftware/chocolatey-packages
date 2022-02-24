$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.2.0/32bit/prtg-desktop-offline-22.2.0-32bit.exe"
  checksum       = "99f984b969420b5990ea25ef42a260858269b8a2"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.2.0/64bit/prtg-desktop-offline-22.2.0-64bit.exe"
  checksum64     = "03b2e90b0aaf6230a21f6353f445dbb1a4fbd196"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
