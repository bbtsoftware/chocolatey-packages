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
    url           = 'https://github.com/github/app/releases/download/v1.1.35/GitHub-Copilot-windows-x64.msi'
    checksum      = 'c3826f88bc393fa99e74e69cdaecfa013dd7bbe9ac4883995a02401b41653def'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs
























