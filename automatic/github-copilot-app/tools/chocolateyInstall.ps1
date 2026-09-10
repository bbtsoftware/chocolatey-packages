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
    url           = 'https://github.com/github/app/releases/download/v1.1.17/GitHub-Copilot-windows-x64.msi'
    checksum      = 'd7d4662c182d4ae4dcc01a727e35c39d3ea90de6ec4cc33f773d08fb4856e329'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs







