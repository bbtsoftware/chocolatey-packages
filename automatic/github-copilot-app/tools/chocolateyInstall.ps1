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
    url           = 'https://github.com/github/app/releases/download/v1.1.34/GitHub-Copilot-windows-x64.msi'
    checksum      = '520fe208ba2bab38123fa665dca3a6696774191344f20cc5f4b1dd6f79627bee'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs























