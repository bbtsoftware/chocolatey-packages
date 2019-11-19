$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://ssis.gallerycdn.vsassets.io/extensions/ssis/sqlserverintegrationservicesprojects/3.2.1/1574147479954/Microsoft.DataTools.IntegrationServices.exe"
    checksum      = "060a38a8bdf5e886b4e224c2bfbb994a5a64ada94404b28bdd172f39a5d9a07f"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
