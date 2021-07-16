$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.4.0/32bit/prtg-desktop-offline-21.4.0-32bit.exe"
  checksum       = "79fb6cfe2c6c9b043afd333cf74c31ea8db5eba4"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.4.0/64bit/prtg-desktop-offline-21.4.0-64bit.exe"
  checksum64     = "cff43f63f48559eb33a3ba926890c4f9db516951"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
