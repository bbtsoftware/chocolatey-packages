$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.8.0/32bit/prtg-desktop-offline-23.8.0-32bit.exe"
  checksum       = "df568b190481e53e4f46c83314258426f243b332"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.8.0/64bit/prtg-desktop-offline-23.8.0-64bit.exe"
  checksum64     = "09474bdcb797db6f7ca93a271cdaab6f4e5b8db4"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
