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
    url           = 'https://github.com/github/app/releases/download/v1.1.22/GitHub-Copilot-windows-x64.msi'
    checksum      = 'ac28085f87c12aa4b0946bce79ef3b628bfa1354fe4cfaf22253dfe5f3232fbf'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs











