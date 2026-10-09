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
    url           = 'https://github.com/github/app/releases/download/v1.1.28/GitHub-Copilot-windows-x64.msi'
    checksum      = 'bf410abf79b9b7e7510364a590ab73f277ec8f6604ad303e7a7c81444981bd3d'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs

















