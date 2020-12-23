$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/SqlServerIntegrationServicesProjects/3.11/vspackage"
    checksum      = "4b15b30bbdb20dcfbb15799aa8d5d8a0bfff433eb76528bf82a1f1d2da95563b"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
