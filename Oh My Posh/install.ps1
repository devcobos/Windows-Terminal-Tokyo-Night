$env:POSH_CACHE_ENABLED = $true
$themesPath = "$env:POSH_THEMES_PATH"
$themeFile = "tokyo-night-custom.omp.yaml"

Copy-Item -Path $themeFile -Destination $themesPath

$profileContent = @'
$env:POSH_CACHE_ENABLED = $true

# Load Oh My Posh with custom theme
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\tokyo-night-custom.omp.yaml" | Invoke-Expression

# Ensure Terminal-Icons module is loaded
if (-not (Get-Module -Name Terminal-Icons -ListAvailable)) {
    Install-Module -Name Terminal-Icons -Scope CurrentUser -Force
}
Import-Module Terminal-Icons
'@

$profilePath = $PROFILE

if (Test-Path $profilePath) {
    Remove-Item -Path $profilePath -Force
}

New-Item -Path $profilePath -ItemType File -Force

Add-Content -Path $profilePath -Value $profileContent

Write-Host "Oh My Posh prompt configured with Tokyo Night theme. Restart your terminal for the changes to take effect."
