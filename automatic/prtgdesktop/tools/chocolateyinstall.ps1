$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/24.0.0/32bit/prtg-desktop-offline-24.0.0-32bit.exe"
  checksum       = "2ab28e78bdd4750c3eff170c7df6975af2375ad8"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/24.0.0/64bit/prtg-desktop-offline-24.0.0-64bit.exe"
  checksum64     = "3187224122e72b425adabd931beba82c2aa597b8"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
