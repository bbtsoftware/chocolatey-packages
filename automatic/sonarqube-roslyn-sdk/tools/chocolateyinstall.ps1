$ErrorActionPreference = 'Stop';

$toolsPath  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$filePath = "$toolsPath\SonarQube.Roslyn.SDK-2.0.zip"

# Determine installation path
$pp = Get-PackageParameters
if (!$pp.InstallDir) { 
    $pp.InstallDir = "{0}\{1}" -f (Get-ToolsLocation), "SonarQubeRoslynSDK" 
}
$installDir = $pp.InstallDir

if (!(Test-Path $installDir)) {
    # Create destination directory if it doesn't exist
    Write-Host "Installing to:" $installDir
    New-Item -ItemType Directory -Force -Path $installDir
}
else {
    # If destination directory already exists remove all files
    Write-Host "'$installDir' already exists and will be updated."
    Remove-Item $installDir\* -Recurse -Force
}

# Extract the archive
Expand-Archive -LiteralPath $filePath -DestinationPath $installDir

# Delete the archive
Remove-Item $filePath