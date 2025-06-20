$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/25.2.0/32bit/prtg-desktop-offline-25.2.0-32bit.exe"
  checksum       = "d986dd5636cf8567145fb5c6042b33b02b0d0dd5"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/25.2.0/64bit/prtg-desktop-offline-25.2.0-64bit.exe"
  checksum64     = "ae95ed2472ed9ed795e81563c29d943f7e46511f"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
