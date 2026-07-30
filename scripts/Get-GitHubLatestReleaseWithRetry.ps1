function Get-GitHubLatestReleaseWithRetry {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Owner,

    [Parameter(Mandatory = $true)]
    [string]$Repository,

    [int]$MaxAttempts = 3,
    [int]$TimeoutSec = 30,
    [string]$GitHubToken = $env:GITHUB_TOKEN
  )

  if ($MaxAttempts -lt 1) {
    throw 'MaxAttempts must be at least 1.'
  }

  if ($TimeoutSec -lt 1) {
    throw 'TimeoutSec must be at least 1.'
  }

  $uri = "https://api.github.com/repos/$Owner/$Repository/releases/latest"

  $headers = @{
    Accept = 'application/vnd.github+json'
    'X-GitHub-Api-Version' = '2022-11-28'
    'User-Agent' = 'chocolatey-package-update-script'
  }

  if ($GitHubToken) {
    $headers['Authorization'] = "Bearer $GitHubToken"
  }

  for ($attempt = 1; $attempt -le $MaxAttempts; $attempt++) {
    try {
      return Invoke-RestMethod `
        -Uri $uri `
        -Headers $headers `
        -TimeoutSec $TimeoutSec
    }
    catch {
      if ($attempt -ge $MaxAttempts) {
        throw "GitHub API request failed after $MaxAttempts attempts: $($_.Exception.Message)"
      }

      Write-Host "GitHub API attempt $attempt/$MaxAttempts failed, retrying..."
      Start-Sleep -Seconds ([Math]::Pow(2, $attempt - 1))
    }
  }
}
