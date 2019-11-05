$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://ssis.gallerycdn.vsassets.io/extensions/ssis/sqlserverintegrationservicesprojects/3.2/1572932535239/Microsoft.DataTools.IntegrationServices.exe"
    checksum      = "8cbd84e059258729e76b886c6a1251944b4e1ec6f5a01aa207622204a0d50d1d"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
