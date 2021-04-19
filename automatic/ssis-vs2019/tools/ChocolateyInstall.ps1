$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/SqlServerIntegrationServicesProjects/3.13/vspackage"
    checksum      = "66094bc95f92b9cea6794d6c1af3dcc32c0a81e30e0bdc0fb7dc28d0fad69804"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
