$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.7.0/32bit/prtg-desktop-offline-22.7.0-32bit.exe"
  checksum       = "7d92fb95a228c4d4f01644de4da5cc105dbde420"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.7.0/64bit/prtg-desktop-offline-22.7.0-64bit.exe"
  checksum64     = "2aa7c1f192fa3877b56f3693e06ccaf98876601b"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
