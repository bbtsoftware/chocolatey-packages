$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.0.1/32bit/prtg-desktop-offline-21.0.1-32bit.exe"
  checksum       = "3395b51aa9bd87ba27f76a8937a4058f65c9cdcf"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.0.1/64bit/prtg-desktop-offline-21.0.1-64bit.exe"
  checksum64     = "6566fb66c332ea741da2f7131b723dd852099844"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
