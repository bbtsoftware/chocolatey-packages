$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/SqlServerIntegrationServicesProjects/3.11.1/vspackage"
    checksum      = "1c99aafdc10d7ebbf5bdbc9511d5f4591a2aef8c60d2bd977d2a886d72625d4f"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
