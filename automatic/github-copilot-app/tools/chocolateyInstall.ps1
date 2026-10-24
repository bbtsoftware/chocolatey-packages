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
    url           = 'https://github.com/github/app/releases/download/v1.1.32/GitHub-Copilot-windows-x64.msi'
    checksum      = 'f31a3cebd3f23ac77bb731a6de93cb14dbb06933b486f8afa5cf11258242937b'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs





















