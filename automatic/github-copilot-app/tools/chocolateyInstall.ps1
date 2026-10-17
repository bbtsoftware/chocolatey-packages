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
    url           = 'https://github.com/github/app/releases/download/v1.1.30/GitHub-Copilot-windows-x64.msi'
    checksum      = '6bea8972d8310e12ae1a5930f83ff115aae40a91ac5bff21e26581765fae593a'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs



















