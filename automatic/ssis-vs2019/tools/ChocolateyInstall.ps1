$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/SqlServerIntegrationServicesProjects/3.14/vspackage"
    checksum      = "fb956c3e75b1eb208e8ebf78065a8ed2f3534dbec4e486dafd76265cb16b7745"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
