$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/24.7.0/32bit/prtg-desktop-offline-24.7.0-32bit.exe"
  checksum       = "4be330e6af18ca22957f58a5ecf52d112e0edec7"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/24.7.0/64bit/prtg-desktop-offline-24.7.0-64bit.exe"
  checksum64     = "10c94b062d3cfd5bbcc6255434ef3ca18e1ae26b"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
