$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/25.2.0/32bit/prtg-desktop-offline-25.2.0-32bit.exe"
  checksum       = "d986dd5636cf8567145fb5c6042b33b02b0d0dd5"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/25.10.0/64bit/prtg-desktop-offline-25.10.0-64bit.exe"
  checksum64     = "787fb87bc63f058788753fe535bbdc7b4814082a"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
