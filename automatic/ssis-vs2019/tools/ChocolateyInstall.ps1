$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://ssis.gallerycdn.vsassets.io/extensions/ssis/sqlserverintegrationservicesprojects/3.3/1577263065975/Microsoft.DataTools.IntegrationServices.exe"
    checksum      = "6ad800e00d9bae57224eb924adf7c5d2ddc2e8b3f1af34f36a041ff9d91b7c6b"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
