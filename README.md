# Windows Terminal Tokyo Night 🌙

A complete Tokyo Night experience for your terminal!!!

This repository includes a custom **Windows Terminal** theme and an **Oh My Posh** prompt configuration to bring the Tokyo Night aesthetic to your shell.

![Preview](.github/assets/terminal-preview.png)

## Initial Setup

1. **Install Windows Terminal**  
   Download and install **Windows Terminal** from the Microsoft Store:  
    [Windows Terminal - Microsoft Store](https://apps.microsoft.com/detail/9N0DX20HK701?hl=en-us&gl=ES&ocid=pdpshare)
2. **Install PowerShell**  
   Download and install the latest version of **PowerShell** from the Microsoft Store:  
    [PowerShell - Microsoft Store](https://apps.microsoft.com/detail/9MZ1SNWT0N5D?hl=en-us&gl=ES&ocid=pdpshare)
3. **Set Windows Terminal as default**

   1. Open **Windows Terminal**.
   2. Go to **Settings**.
   3. Set **Windows Terminal** and **PowerShell** as the default options on startup.
   4. Save the changes.

   ![Default options](.github/assets/windows_terminal_default.png)

## Installation Tokyo Night Theme

1. Download this repository.
2. Navigate to the `Windows Terminal Theme` folder.
3. Run the `install.ps1` script.
4. Once installed, restart your terminal.
5. Open the settings, go to **Color Schemes**, and select **Tokyo Night Custom**.
   ![Settings color](.github/assets/settings_color_theme.png)
6. Set it as the default color scheme.
7. Save the changes.
   ![Settings default color](.github/assets/default_color_theme.png)

### Change Tab Row (Optional)

1. Open the settings and go to **Appearance**.
2. Locate the option **Use Acrylic Material in the tab row**.
3. Save the changes.
   ![acrylic material](.github/assets/acrylic_material_tab_row.png)

## Install Oh My Posh

[Official Documentation](https://ohmyposh.dev/docs/installation/windows)

### Using winget to install

```
winget install JanDeDobbeleer.OhMyPosh -s winget
```

> **Note:** It's recommended to restart the terminal to reload the PATH. If the `oh-my-posh` command isn't recognized, you can either re-run the installer or add it manually to your PATH:
>
> ```
> $env:Path += ";C:\Users\<your_user>\AppData\Local\Programs\oh-my-posh\bin"
> ```

### Install a compatible font

1. Run the following command in PowerShell:
   ```
   oh-my-posh font install
   ```
2. Select the `FiraCode` font.
   ![Select Fira Code](.github/assets/install_fira_code.png)
3. Restart the terminal.
4. Go to `Settings → Profiles → Defaults → Appearance`.
5. Select the font **FiraCode Nerd Font Mono** and set the thickness to **Medium**.
6. Save the changes.
   ![Set font default](.github/assets/set_font_fira_code.png)

### Configure your shell to use Oh My Posh custom prompt

1. Download this repository.
2. Navigate to the `Windows Terminal Theme` folder.
3. Run the `install.ps1` script.
4. Once installed, restart your terminal.

   ![Finished](.github/assets/script_prompt.png)
