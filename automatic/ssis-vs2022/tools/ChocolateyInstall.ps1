$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/MicrosoftDataToolsIntegrationServices/1.6.2/vspackage"
    checksum      = "08ee9fb20f1f613b6ab3c6248a1dd05d53567c6c43e176430d296bf2d1b98efb"
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs
