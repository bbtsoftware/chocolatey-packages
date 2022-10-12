$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.13.0/32bit/prtg-desktop-offline-22.13.0-32bit.exe"
  checksum       = "109c6a3a629e509c91025d7ed463dbf270ce42b6"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.13.0/64bit/prtg-desktop-offline-22.13.0-64bit.exe"
  checksum64     = "e406ee801e39afa02ecefa7229d08ffc94864fcd"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
