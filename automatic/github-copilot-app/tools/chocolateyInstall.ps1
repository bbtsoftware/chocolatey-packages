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
    url           = 'https://github.com/github/app/releases/download/v1.1.24/GitHub-Copilot-windows-x64.msi'
    checksum      = '5a4fe1546b44f78a6cf327da44094dcb95bd658e9d89c66032b41b3f0553490b'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs













