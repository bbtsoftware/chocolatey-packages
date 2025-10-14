$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/MicrosoftDataToolsIntegrationServices/2.0/vspackage"
    checksum      = "bd54cf1bbe3e01617424ae5614892007e9c156b1ff2faacd5c47b726ad636ffa"
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs
