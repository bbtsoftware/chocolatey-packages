$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/SqlServerIntegrationServicesProjects/3.12/vspackage"
    checksum      = "8b67eb068d5e9d86165a73dcadc4207377c7dcd8e7dcba0fbc5db4497b11af98"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
