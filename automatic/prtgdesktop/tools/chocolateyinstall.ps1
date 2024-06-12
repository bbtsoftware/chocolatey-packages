$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/24.6.0/32bit/prtg-desktop-offline-24.6.0-32bit.exe"
  checksum       = "1229d9b05d14f43e265b29d6482f989e3b3b36b5"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/24.6.0/64bit/prtg-desktop-offline-24.6.0-64bit.exe"
  checksum64     = "c50484f388275211660782f23c54661b707a37ed"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
