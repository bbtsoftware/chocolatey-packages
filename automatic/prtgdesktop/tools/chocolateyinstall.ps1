$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/22.5.0/32bit/prtg-desktop-offline-22.5.0-32bit.exe"
  checksum       = "e9a5e6034907a02e5db0da473413485a4a83cdd8"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/22.5.0/64bit/prtg-desktop-offline-22.5.0-64bit.exe"
  checksum64     = "51ac383c074c09080e22eafe15c72029640810ef"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
