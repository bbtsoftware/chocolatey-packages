$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SSIS/vsextensions/MicrosoftDataToolsIntegrationServices/1.3.2/vspackage"
    checksum      = "63F5DA2B6391E5326F76E6B0589EFE119AAD2D067D6B283D67C3E22CB0062FBE"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
