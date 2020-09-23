$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://ssis.gallerycdn.vsassets.io/extensions/ssis/sqlserverintegrationservicesprojects/3.10/1600831136483/Microsoft.DataTools.IntegrationServices.exe"
    checksum      = "0443902fe316663bc8f15dc1b469e79e395ff81e789bda471df72915b0a875ba"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
