$env:POSH_CACHE_ENABLED = $true
$themesPath = "$HOME\.config"
$themeFile = "tokyo-night-custom.toml"
$themesPath = "$env:USERPROFILE\.config"

if (-not (Test-Path -Path $themesPath)) {
    New-Item -ItemType Directory -Path $themesPath
}

$destinationFile = "$themesPath\starship.toml"
Copy-Item -Path $themeFile -Destination $destinationFile -Force

$profileContent = @'
# Load Startship with custom theme
Invoke-Expression (&starship init powershell)

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

Write-Output ' '
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "✅ Starship prompt has been successfully configured!" -ForegroundColor Green
Write-Host "🚀 Restart your terminal for the changes to take effect." -ForegroundColor Yellow
Write-Host "============================================================" -ForegroundColor Cyan
Write-Output ' '
