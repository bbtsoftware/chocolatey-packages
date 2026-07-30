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
    url           = "https://github.com/github/app/releases/download/v1.1.2/GitHub-Copilot-windows-x64.msi"
    checksum      = "8b57b056385886d2804dc4cf9fee1002a997b09945b08008081ebd9b3931a5df"
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs


