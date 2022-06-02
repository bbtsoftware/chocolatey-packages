$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/SqlServerIntegrationServicesProjects/4.0/vspackage"
    checksum      = "6388440ce7df2f4d62356f4462bb31455b5dba4f0ea42a2145fe686bc0c9e607"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
