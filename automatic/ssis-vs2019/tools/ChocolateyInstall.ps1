$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/SqlServerIntegrationServicesProjects/4.4.2/vspackage"
    checksum      = "d0a0193d44c24e15c5557331b7c8fcdf5afcb17d27c92047a004ca931a9911c4"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
