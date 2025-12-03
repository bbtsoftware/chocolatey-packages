$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/MicrosoftDataToolsIntegrationServices/2.1/vspackage"
    checksum      = "d23f71ed561d00477a2c0a0780506b30f572dff297fc91fee3e463926363ca2f"
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs
