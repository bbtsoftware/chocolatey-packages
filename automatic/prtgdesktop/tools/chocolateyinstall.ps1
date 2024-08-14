$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'PRTG Desktop*'

  fileType      = 'exe'

  url            = "https://downloads.paessler.com/prtg_desktop/24.8.0/32bit/prtg-desktop-offline-24.8.0-32bit.exe"
  checksum       = "2de6933c41ed62ea68113f3272bbd60a997163cc"
  checksumType   = "SHA1"

  url64          = "https://downloads.paessler.com/prtg_desktop/24.8.0/64bit/prtg-desktop-offline-24.8.0-64bit.exe"
  checksum64     = "eb59fb5626ba895cf2736c5dbc94d18ea5aa7dbf"
  checksumType64 = "SHA1"

  silentArgs     = '/quiet /norestart'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
