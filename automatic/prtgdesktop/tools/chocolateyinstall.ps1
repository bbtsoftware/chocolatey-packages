$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/24.3.1/32bit/prtg-desktop-offline-24.3.1-32bit.exe"
  checksum       = "1b3bddb84b09aee454e5453a3f32c4cd54bf5a7a"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/24.3.1/64bit/prtg-desktop-offline-24.3.1-64bit.exe"
  checksum64     = "c07f7cecc4a8838dc6ac6529e46739f8b877e50e"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
