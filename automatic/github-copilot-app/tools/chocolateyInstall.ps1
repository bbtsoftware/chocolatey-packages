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
    url           = 'https://github.com/github/app/releases/download/v1.1.16/GitHub-Copilot-windows-x64.msi'
    checksum      = 'e491ed6954355a366602f712c4a4425863299046786ee2bf6b43b10790832068'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs






