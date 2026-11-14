$packageName = $env:ChocolateyPackageName

$packageArgs = @{
    packageName   = $packageName
    softwareName  = 'GitHub Copilot App'
    fileType      = 'msi'
    silentArgs    = "/qn /norestart /log ""${Env:TEMP}\${packageName}.log"""
    validExitCodes = @(
        0, # success
        3010 # success, restart required
    )
    url           = 'https://github.com/github/app/releases/download/v1.4.1/GitHub-Copilot-windows-x64.msi'
    checksum      = '2314a5056914f5040df82e335f57bfa5baf131c305e4df8066c1183ab2b1ac18'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs




























