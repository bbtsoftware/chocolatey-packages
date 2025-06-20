$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/MicrosoftDataToolsIntegrationServices/1.6/vspackage"
    checksum      = "6c9ba08d967388d5e2e5de73f749e8c6a0dbb4a5a8446e6aaac6f37cd020607b"
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs
