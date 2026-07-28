$softwareName = 'GitHub Copilot App*'
[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

if ($key.Count -eq 1) {
    $key | ForEach-Object {
        Uninstall-ChocolateyPackage `
            -PackageName $env:ChocolateyPackageName `
            -FileType 'MSI' `
            -SilentArgs "$($_.PSChildName) /qb /norestart" `
            -ValidExitCodes @(0, 3010)
    }
} elseif ($key.Count -eq 0) {
    Write-Warning "$softwareName has already been uninstalled by other means."
} elseif ($key.Count -gt 1) {
    Write-Warning "$($key.Count) matches found!"
    Write-Warning "To prevent accidental removal, no software was uninstalled."
    Write-Warning ($key | ForEach-Object { $_.DisplayName } | Out-String)
}