$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/SqlServerIntegrationServicesProjects/4.3/vspackage"
    checksum      = "88f4b957689b8f0e006c80a5dd060829296e0a0252f55546c20258aa77cd3eee"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
