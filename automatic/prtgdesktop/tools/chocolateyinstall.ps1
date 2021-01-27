$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/20.15.1/32bit/prtg-desktop-offline-20.15.1-32bit.exe"
  checksum       = "535d3f6ef6219e9a2bb45e247a8666e014abafb8"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/20.15.1/64bit/prtg-desktop-offline-20.15.1-64bit.exe"
  checksum64     = "36bae446ad0ef88fca815ab9b438e3e314f2df90"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
