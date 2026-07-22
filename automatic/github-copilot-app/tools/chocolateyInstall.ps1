$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'GitHub Copilot App'
    fileType      = 'msi'
    silentArgs    = "/qb /norestart /log ""${Env:TEMP}\${packageName}.log"""
    validExitCodes = @(
        0, # success
        3010 # success, restart required
    )
    url           = "__DOWNLOAD_URL__"
    checksum      = "__CHECKSUM__"
    checksumType  = "sha256"
  }

Install-ChocolateyPackage @packageArgs
