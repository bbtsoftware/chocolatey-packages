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
    url           = 'https://github.com/github/app/releases/download/v1.1.23/GitHub-Copilot-windows-x64.msi'
    checksum      = 'b0f1851edb5d202e6cc4d35ef313c2ebdf898f074712e848099f3de2b99cecb3'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs












