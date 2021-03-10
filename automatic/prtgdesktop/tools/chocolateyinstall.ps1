$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.1.1/32bit/prtg-desktop-offline-21.1.1-32bit.exe"
  checksum       = "677c528513b547eabef3a261065589576d07d0ef"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.1.1/64bit/prtg-desktop-offline-21.1.1-64bit.exe"
  checksum64     = "880962096c3eb08f75ec18aa852afdd681923009"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
