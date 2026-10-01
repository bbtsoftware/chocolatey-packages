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
    url           = 'https://github.com/github/app/releases/download/v1.1.25/GitHub-Copilot-windows-x64.msi'
    checksum      = 'b5a6d6c971b08e57f877b2a523836a5f025743ba8d0789b942ceec1e976d48e2'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs














