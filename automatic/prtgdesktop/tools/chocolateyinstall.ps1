$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.10.0/32bit/prtg-desktop-offline-22.10.0-32bit.exe"
  checksum       = "e0f19d0874b8338817fae36531dadd72ff2316d8"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.10.0/64bit/prtg-desktop-offline-22.10.0-64bit.exe"
  checksum64     = "3b299ff955e9958d1f0a5b1a6378dcb5c9408aab"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
