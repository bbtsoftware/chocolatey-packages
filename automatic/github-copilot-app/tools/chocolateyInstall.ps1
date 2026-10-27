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
    url           = 'https://github.com/github/app/releases/download/v1.1.33/GitHub-Copilot-windows-x64.msi'
    checksum      = 'e93f08d6b7990a627a830b7c9e23e2a570eb11d0eb6ba83482a33be396b1bf1b'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs






















