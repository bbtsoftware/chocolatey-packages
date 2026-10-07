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
    url           = 'https://github.com/github/app/releases/download/v1.1.27/GitHub-Copilot-windows-x64.msi'
    checksum      = 'a8e10e0563d4c0ee829501b2d0b0c5199e9d6b1be986db5c64d9c69dc05bc4a7'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs
















