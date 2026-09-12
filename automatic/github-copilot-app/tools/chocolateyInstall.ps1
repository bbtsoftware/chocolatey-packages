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
    url           = 'https://github.com/github/app/releases/download/v1.1.20/GitHub-Copilot-windows-x64.msi'
    checksum      = '21ea0f39b6bd09cd5fe4e88586f4ca203d388214d0239712eee1feb9f0a34469'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs









