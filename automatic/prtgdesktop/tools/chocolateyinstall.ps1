$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.14.0/32bit/prtg-desktop-offline-22.14.0-32bit.exe"
  checksum       = "e5e3132835090b1ed0eb15aeb172673f2779f869"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.14.0/64bit/prtg-desktop-offline-22.14.0-64bit.exe"
  checksum64     = "04dd7cc2e59f5bdb85ef8ad170d2a82c2078f315"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
