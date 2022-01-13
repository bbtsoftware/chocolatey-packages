$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.12.0/32bit/prtg-desktop-offline-21.12.0-32bit.exe"
  checksum       = "364bc6eded2a048a2a38397e854c158270881789"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.12.0/64bit/prtg-desktop-offline-21.12.0-64bit.exe"
  checksum64     = "3cf07ed7790ad4968710960c53a2e55c3a266774"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
