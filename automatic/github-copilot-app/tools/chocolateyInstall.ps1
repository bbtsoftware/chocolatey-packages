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
    url           = 'https://github.com/github/app/releases/download/v1.4.3/GitHub-Copilot-windows-x64.msi'
    checksum      = '3769151d739f00ff95892b2efcb0887cc0be047ac414b9ec56ac09a6933551ab'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs






























