$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.6.0/32bit/prtg-desktop-offline-21.6.0-32bit.exe"
  checksum       = "84263f4c55f065c79e294432f65612d9331d38dc"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.6.0/64bit/prtg-desktop-offline-21.6.0-64bit.exe"
  checksum64     = "8ecebc5fb72562940bda5a20e06bccfa505e56f1"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
