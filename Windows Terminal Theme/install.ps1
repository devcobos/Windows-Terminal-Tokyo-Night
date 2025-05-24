$installPath = "$Env:LocalAppData\Microsoft\Windows Terminal\Fragments\tokyo-night-custom"

if (!(Test-Path $installPath)) {
  New-Item -Type Directory -Path $installPath
}

Copy-Item -Path tokyo-night-custom.json -Destination $installPath


Write-Output ' '
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "🌙 Tokyo Night Colorscheme Fragment Installed." -ForegroundColor Green
Write-Host "🚀 Restart your terminal for the changes to take effect." -ForegroundColor Yellow
Write-Host "============================================================" -ForegroundColor Cyan
Write-Output ' '
