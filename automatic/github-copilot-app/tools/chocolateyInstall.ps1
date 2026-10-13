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
    url           = 'https://github.com/github/app/releases/download/v1.1.29/GitHub-Copilot-windows-x64.msi'
    checksum      = '441bf223e54a11137728b34d618d40c88933b5c83a912b7cc0b64a2dcc9af118'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs


















