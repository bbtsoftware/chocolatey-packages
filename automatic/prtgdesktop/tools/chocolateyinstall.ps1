$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.9.0/32bit/prtg-desktop-offline-21.9.0-32bit.exe"
  checksum       = "549fda876ccf9a241502568d963d9507423380e5"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.9.0/64bit/prtg-desktop-offline-21.9.0-64bit.exe"
  checksum64     = "ae6d5aa59c7a2585f62c000f91c991debc4bdd11"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
