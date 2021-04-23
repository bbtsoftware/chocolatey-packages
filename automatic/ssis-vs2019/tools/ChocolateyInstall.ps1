$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/SqlServerIntegrationServicesProjects/3.13.1/vspackage"
    checksum      = "0f66c640e1c0ca5e9ecaee4bfb86e97177bfde777c78131e185d3ecd437fa306"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
