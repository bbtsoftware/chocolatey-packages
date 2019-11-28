$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://ssis.gallerycdn.vsassets.io/extensions/ssis/sqlserverintegrationservicesprojects/3.2.2/1574928608239/Microsoft.DataTools.IntegrationServices.exe"
    checksum      = "566d1d6b2d783098ee7180bc1b187b2690207a98ee71f2d71d234c28ff0da773"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
