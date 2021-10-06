$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.8.0/32bit/prtg-desktop-offline-21.8.0-32bit.exe"
  checksum       = "4dafd44e97af72fa5f696d3289d0407663017c64"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.8.0/64bit/prtg-desktop-offline-21.8.0-64bit.exe"
  checksum64     = "b21eefc1941babb274deca8fac8bf05fef28c84b"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
