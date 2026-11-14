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
    url           = 'https://github.com/github/app/releases/download/v1.4.2/GitHub-Copilot-windows-x64.msi'
    checksum      = '04b30a68dffdde16cbc86b6c8e4372eaafdf7b8ff193e407b88889b64168c462'
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs





























