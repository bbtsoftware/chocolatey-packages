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
    url           = 'https://github.com/github/app/releases/download/v1.2.0/GitHub-Copilot-windows-x64.msi'
    checksum      = 'fe07bfe12d1bf47bac4ff5727bae57cbd9ba38b52c46c6353f400256503a2efc'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs

























