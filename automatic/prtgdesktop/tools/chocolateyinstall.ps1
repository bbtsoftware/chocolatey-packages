$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.15.0/32bit/prtg-desktop-offline-22.15.0-32bit.exe"
  checksum       = "d19397926c83f46e493a8733725efff9e8dffe94"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.15.0/64bit/prtg-desktop-offline-22.15.0-64bit.exe"
  checksum64     = "31a45dea30333f980617daccd25039c366979e93"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
