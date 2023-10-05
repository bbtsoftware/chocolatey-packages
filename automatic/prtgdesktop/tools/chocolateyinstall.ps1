$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.11.0/32bit/prtg-desktop-offline-23.11.0-32bit.exe"
  checksum       = "0c819d1cdebc3928eb814714bbeff7ab4a496e39"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.11.0/64bit/prtg-desktop-offline-23.11.0-64bit.exe"
  checksum64     = "0dbaa5b3f8abc38cd543b088b819de36b487fb97"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
