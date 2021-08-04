$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/21.5.0/32bit/prtg-desktop-offline-21.5.0-32bit.exe"
  checksum       = "fa98338922f00968fbe83a00d5bbce4c72d5540b"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/21.5.0/64bit/prtg-desktop-offline-21.5.0-64bit.exe"
  checksum64     = "bc57e7425a4b676fe79b3d0712ca98acd2ae0aa3"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
