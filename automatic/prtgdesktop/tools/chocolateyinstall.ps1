$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.9.0/32bit/prtg-desktop-offline-22.9.0-32bit.exe"
  checksum       = "b426f5f07a9c24d897aa390f5ebffa0dc9e79ddd"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.9.0/64bit/prtg-desktop-offline-22.9.0-64bit.exe"
  checksum64     = "1a11b534ed53467bba4f447e55a76741795e9e06"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
