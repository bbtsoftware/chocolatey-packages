$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/23.15.0/32bit/prtg-desktop-offline-23.15.0-32bit.exe"
  checksum       = "be103f245518e235b7c0f243f4bc47f04dc8389f"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/23.15.0/64bit/prtg-desktop-offline-23.15.0-64bit.exe"
  checksum64     = "79a0a047e6b31e16179690037b2a8fa04293b1d6"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
