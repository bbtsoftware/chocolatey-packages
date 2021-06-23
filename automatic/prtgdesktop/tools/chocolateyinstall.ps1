$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.3.2/32bit/prtg-desktop-offline-21.3.2-32bit.exe"
  checksum       = "e0ff427fea3a413c34c53a5276396badd56d5386"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.3.2/64bit/prtg-desktop-offline-21.3.2-64bit.exe"
  checksum64     = "f3a8c0e13384675b20e648e10e4b07599723c911"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
