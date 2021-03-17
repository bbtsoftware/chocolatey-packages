$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/SqlServerIntegrationServicesProjects/3.12.1/vspackage"
    checksum      = "58c7cdb39454ecb3415ed6cb132983a530da2cd5862dfffcb114ab18a3827a8b"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
