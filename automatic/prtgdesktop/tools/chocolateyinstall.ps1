$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.2.1/32bit/prtg-desktop-offline-21.2.1-32bit.exe"
  checksum       = "52618fe8350f3b1035e00761eebb572d295b9e13"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.2.1/64bit/prtg-desktop-offline-21.2.1-64bit.exe"
  checksum64     = "d5ca15a84753b8afb2ca410f05c557a459c343ed"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
