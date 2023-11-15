$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.13.0/32bit/prtg-desktop-offline-23.13.0-32bit.exe"
  checksum       = "95fe051017137312a8535cf7d8866b7ec0265c51"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.13.0/64bit/prtg-desktop-offline-23.13.0-64bit.exe"
  checksum64     = "6a4ab9bd04c9c1568240ed8fa125e4564a4df132"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
