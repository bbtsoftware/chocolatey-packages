$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/SqlServerIntegrationServicesProjects/4.1.2/vspackage"
    checksum      = "1d0cc180f1b7fc5b91277bde12dd470a3997f996b463016df0c7e93158355141"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
