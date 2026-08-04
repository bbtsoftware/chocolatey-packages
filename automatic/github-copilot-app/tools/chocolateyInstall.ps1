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
    url           = 'https://github.com/github/app/releases/download/v1.1.3/GitHub-Copilot-windows-x64.msi'
    checksum      = '72fc16b4f1196900ba06276c29c29b9ed419dda90d70cd460c1cd7e598be9fdf'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs



