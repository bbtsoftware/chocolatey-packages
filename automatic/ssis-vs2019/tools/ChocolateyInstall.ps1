$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://ssis.gallerycdn.vsassets.io/extensions/ssis/sqlserverintegrationservicesprojects/3.7/1589974018795/Microsoft.DataTools.IntegrationServices.exe"
    checksum      = "63440374fd521e949fc65e7538f27c2ae3ddc69c3c439a3b118b612a2c360f85"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
