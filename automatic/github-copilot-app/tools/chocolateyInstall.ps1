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
    url           = 'https://github.com/github/app/releases/download/v1.1.26/GitHub-Copilot-windows-x64.msi'
    checksum      = 'e66956911ffcf4b916d4b8da7857b911c37bec37b1a17fb9dc227589068aa874'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs















