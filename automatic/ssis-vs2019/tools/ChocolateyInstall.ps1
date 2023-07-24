$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/SqlServerIntegrationServicesProjects/4.5/vspackage"
    checksum      = "59412c50d113975769a7ce3f4f5877c86ff63153b9f1e2da4c94788c6e5723ed"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
