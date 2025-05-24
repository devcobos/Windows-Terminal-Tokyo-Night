# Windows Terminal Tokyo Night 🌙

This project provides a fully customized Windows Terminal setup featuring a Tokyo Night theme and personalized configurations for a seamless and visually appealing command-line experience. It includes instructions for installing and configuring a compatible font, color schemes, and a Starship prompt.

![Preview](.github/assets/terminal-preview.png)

## Table of Contents

- [Initial Setup](#initial-setup)
- [Installation Tokyo Night Theme](#installation-tokyo-night-theme)
- [Install Starship](#install-starship)

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

## Install Starship

[Official Documentation](https://starship.rs/guide/)

### Using winget to install

```
winget install --id Starship.Starship
```

### Install a Compatible Font

You need a Nerd Font installed and enabled in your terminal to display icons and special symbols.

1. Download a `FiraCode Nerd Font` font from: [Nerd Fonts - Font Downloads](https://www.nerdfonts.com/font-downloads)
2. Install the font and open the terminal.
3. Go to `Settings → Profiles → Defaults → Appearance`.
4. Select the font **FiraCode Nerd Font Mono** and set the font weigth to **Medium**.
5. Save the changes.
   ![Set font default](.github/assets/set_font_fira_code.png)

### Configure your shell to use StartShip custom prompt

1. Download this repository.
2. Navigate to the `Starship` folder.
3. Run the `install.ps1` script.
4. Once installed, restart your terminal.
   ![Finished](.github/assets/prompt_starship.png)
