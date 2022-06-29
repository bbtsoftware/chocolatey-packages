$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.8.0/32bit/prtg-desktop-offline-22.8.0-32bit.exe"
  checksum       = "260ea4146acb81433c20d920c23f82cd0e2f3d36"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.8.0/64bit/prtg-desktop-offline-22.8.0-64bit.exe"
  checksum64     = "d01c490d1b3fda2369f8cc3f36af4f7bfd76fef8"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
