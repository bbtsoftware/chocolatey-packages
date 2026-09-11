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
    url           = 'https://github.com/github/app/releases/download/v1.1.19/GitHub-Copilot-windows-x64.msi'
    checksum      = 'c03bd6f4f795ad04492706ef16db89face676bbc0f470d84834e9ba9b3819a73'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs








