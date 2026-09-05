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
    url           = 'https://github.com/github/app/releases/download/v1.1.15/GitHub-Copilot-windows-x64.msi'
    checksum      = '6852a63ffd3b1961032cdbebfb5bf36e176b71763116212b653b254746239add'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs





