$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.10.0/32bit/prtg-desktop-offline-21.10.0-32bit.exe"
  checksum       = "16239230bb9fa27b3195f7a8dd7675842840d3ed"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.10.0/64bit/prtg-desktop-offline-21.10.0-64bit.exe"
  checksum64     = "abc70bb1679c20bd6e992f5a579bdc9e046bac03"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
