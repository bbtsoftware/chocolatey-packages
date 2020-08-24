$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://ssis.gallerycdn.vsassets.io/extensions/ssis/sqlserverintegrationservicesprojects/3.9/1598239170220/Microsoft.DataTools.IntegrationServices.exe"
    checksum      = "6575df8c2964a1c420d123b0abb67f099746f25a951158c8acfbb83af3f9bc45"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
