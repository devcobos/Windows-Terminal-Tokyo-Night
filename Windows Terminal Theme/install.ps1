$installPath = "$Env:LocalAppData\Microsoft\Windows Terminal\Fragments\tokyo-night-custom"

if (!(Test-Path $installPath)) {
  New-Item -Type Directory -Path $installPath
}

Copy-Item -Path tokyo-night-custom.json -Destination $installPath

Write-Output ' '
Write-Output '🌙 Tokyo Night Custom Colorscheme Fragment Installed'
Write-Output '  Restart Windows Terminal and then select or set the theme in your profile'
Write-Output ' '
