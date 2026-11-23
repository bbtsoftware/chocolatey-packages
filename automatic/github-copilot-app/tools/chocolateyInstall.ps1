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
    url           = 'https://github.com/github/app/releases/download/v1.5.0/GitHub-Copilot-windows-x64.msi'
    checksum      = '2b1ebdf80ea93034764095916732bbb2d782eab8dd5191a78958252f7d1b6544'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs































