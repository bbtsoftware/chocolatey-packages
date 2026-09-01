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
    url           = 'https://github.com/github/app/releases/download/v1.1.14/GitHub-Copilot-windows-x64.msi'
    checksum      = '7d685d39f294dda1470c3c2a1af3cbfcb0b5cfb949fdcc9dedc33381cedccc28'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs




