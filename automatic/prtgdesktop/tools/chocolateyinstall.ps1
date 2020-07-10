$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/20.7.0/32bit/prtg-desktop-offline-20.7.0-32bit.exe"
  checksum       = "28397668045cb253603390b2b8d179d375b4e995"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/20.7.0/64bit/prtg-desktop-offline-20.7.0-64bit.exe"
  checksum64     = "9e151ad85b7d2bf2439cd3bdb408be3cdfdd8aeb"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
