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
    url           = 'https://github.com/github/app/releases/download/v1.3.0/GitHub-Copilot-windows-x64.msi'
    checksum      = '9f51e3c35a36512f0d0d3549a4b2f6c14b9206b69a4dc506d0f9d54516517d49'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs


























