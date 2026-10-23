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
    url           = 'https://github.com/github/app/releases/download/v1.1.31/GitHub-Copilot-windows-x64.msi'
    checksum      = 'c261ff4d2e89beafb99340d32c123ca59d66864b3fae52b0684077a05e6d6b42'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs




















