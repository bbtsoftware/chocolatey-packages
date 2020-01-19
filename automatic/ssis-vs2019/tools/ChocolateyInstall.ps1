$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://ssis.gallerycdn.vsassets.io/extensions/ssis/sqlserverintegrationservicesprojects/3.4/1579417148609/Microsoft.DataTools.IntegrationServices.exe"
    checksum      = "4aa60398e420528cd4f8f4343df0d8b9db1cee3b2ac2f38d123c550e3268a4ef"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
