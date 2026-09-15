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
    url           = 'https://github.com/github/app/releases/download/v1.1.21/GitHub-Copilot-windows-x64.msi'
    checksum      = 'a9519b97121229b7b1dec421ae2b989da93835a106cdb0ea9ed4a0c5fa73c612'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs










