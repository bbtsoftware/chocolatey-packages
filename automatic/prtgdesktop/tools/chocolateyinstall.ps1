$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/20.8.0/32bit/prtg-desktop-offline-20.8.0-32bit.exe"
  checksum       = "1defb7c8e36f6c6bec0cacbec240fdcb4aa14e80"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/20.8.0/64bit/prtg-desktop-offline-20.8.0-64bit.exe"
  checksum64     = "c60ceb14dcdae70e798e2c02da268963dbbf2050"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
