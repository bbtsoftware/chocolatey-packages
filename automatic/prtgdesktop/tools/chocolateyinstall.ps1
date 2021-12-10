$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.11.0/32bit/prtg-desktop-offline-21.11.0-32bit.exe"
  checksum       = "46ed3517f6185915e774d7004c1fc1c42b0d1518"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.11.0/64bit/prtg-desktop-offline-21.11.0-64bit.exe"
  checksum64     = "7ae553441dab858183d14a0e7913ecdf5532efb9"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
