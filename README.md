# LatiArch

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Arch Linux](https://img.shields.io/badge/Arch%20Linux-1793D1?logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![Hyprland](https://img.shields.io/badge/Hyprland-FF6B6B?logo=hyprland&logoColor=white)](https://hyprland.org/)

**LatiArch** is a comprehensive Linux desktop environment configuration for Arch Linux, built around the modern Hyprland Wayland compositor. It provides a complete, curated desktop experience with beautiful themes, optimized configurations, and a streamlined installation process.

```
 ▄█          ▄████████     ███      ▄█     ▄████████    ▄████████  ▄████████    ▄█    █▄    
███         ███    ███ ▀█████████▄ ███    ███    ███   ███    ███ ███    ███   ███    ███   
███         ███    ███    ▀███▀▀██ ███▌   ███    ███   ███    ███ ███    █▀    ███    ███   
███         ███    ███     ███   ▀ ███▌   ███    ███  ▄███▄▄▄▄██▀ ███         ▄███▄▄▄▄███▄▄ 
███       ▀███████████     ███     ███▌ ▀███████████ ▀▀███▀▀▀▀▀   ███        ▀▀███▀▀▀▀███▀  
███         ███    ███     ███     ███    ███    ███ ▀███████████ ███    █▄    ███    ███   
███▌    ▄   ███    ███     ███     ███    ███    ███   ███    ███ ███    ███   ███    ███   
█████▄▄██   ███    █▀     ▄████▀   █▀     ███    █▀    ███    ███ ████████▀    ███    █▀    
▀                                                      ███    ███                           
```

## ✨ Features

### 🎨 **Beautiful Theming**
- **12+ Curated Themes**: Including Catppuccin, Dracula, Nord, Tokyo Night, and more
- **Complete Desktop Integration**: All components themed consistently
- **Modern Design**: Clean, minimal aesthetics with smooth animations
- **Easy Theme Switching**: Built-in theme management system

### 🖥️ **Desktop Environment**
- **Hyprland Wayland Compositor**: Modern, performant window management
- **Waybar Status Bar**: Customizable system information display
- **Rofi Launcher**: Fast application launcher with custom themes
- **Ghostty Terminal**: Modern terminal emulator with GPU acceleration

### 🛠️ **Development Tools**
- **Neovim**: Fully configured with LazyVim
- **Docker**: Container development environment
- **Git Integration**: Pre-configured with useful aliases
- **Modern CLI Tools**: bat, eza, dust, btop, and more

### 🎵 **Multimedia & Utilities**
- **Audio**: PulseAudio with volume controls
- **Network**: WiFi and Bluetooth management
- **Screenshots**: Built-in screenshot utilities
- **File Management**: Modern file managers and utilities

## 🚀 Quick Installation

### Prerequisites
- Arch Linux base system (see below for required configuration)
- Internet connection
- Root access

### **Required** `archinstall` options
LatiArch requires a few options preconfigured during the `archinstall` process. Make sure the below options are set, and leave any other options not mentioned blank:
| Menu | Option |
| ------ | ------ |
| Mirrors & Repositories   | Select regions > Your country   |
| Disk Configuration | Partitioning > Default partitioning layout > Select the correct disk  |
| Disk > File system | btrfs + default structure = yes & use compression |
| Disk > Disk encryption | Encryption type: LUKS, enter an encryption password |
| Disk > Disk encryption | Partitions > Select partition |
| Hostname | Set a name for your computer |
| Bootloader | Limine |
| Authentication > Root password | Set a root password |
| Authentication > User account | Create a user & make Superuser |
| Applications > Audio | Pipewire |
| Network configuration | Copy ISO configuration |
| Timezone | Set your timezone |

**Note:** Due to how LatiArch is configured, the root password, disk encryption password, and user password must all be the same.

### One-Line Install
```bash
curl -fsSL https://rjb.rip/latiarch | bash
```

### Manual Installation
```bash
git clone https://github.com/ryanburkii/latiarch.git ~/.local/share/latiarch
cd ~/.local/share/latiarch
sudo ./install.sh
```

## 🎯 What Gets Installed

### Core Components
- **Window Manager**: Hyprland with optimized configuration
- **Status Bar**: Waybar with system monitoring
- **Launcher**: Rofi with custom themes
- **Terminal**: Ghostty and Alacritty
- **Notification**: Mako notification daemon
- **Lock Screen**: Hyprlock with themes

### Applications
- **Browser**: Chromium with custom themes
- **File Manager**: Modern file management tools
- **Media**: Audio/video players and utilities
- **Development**: Git, Docker, Neovim, and more
- **System Tools**: Hardware monitoring and management

### Themes Included
- Arc Blueberry
- Catppuccin (Dark & Latte)
- Dracula
- Everforest
- Gruvbox
- Kanagawa
- Matte Black
- Nord
- Osaka Jade
- Ristretto
- Rose Pine
- Tokyo Night

## 📁 Project Structure

```
latiarch/
├── applications/          # Desktop application files
├── bin/                   # Executable scripts and utilities
├── config/               # User configuration files
├── default/              # Default system configurations
├── install/              # Installation scripts and packages
├── themes/               # Theme definitions and assets
├── install.sh            # Main installation script
├── boot.sh               # Quick install script
└── README.md             # This file
```

## 🎨 Theme Management

LatiArch includes a built-in theme management system accessible through the main menu:

```bash
latiarch-menu
```

Navigate to **Setup** → **Themes** to:
- Preview available themes
- Switch between themes instantly
- Customize theme settings
- Install additional themes

## ⚙️ Configuration

### Hyprland Configuration
- **Location**: `~/.config/hypr/`
- **Key Bindings**: Customizable in `bindings.conf`
- **Window Rules**: Defined in `windows.conf`
- **Monitor Setup**: Configure in `monitors.conf`

### Waybar Configuration
- **Location**: `~/.config/waybar/`
- **Modules**: Customizable system information display
- **Styling**: CSS-based theming

### Rofi Configuration
- **Location**: `~/.config/rofi/`
- **Themes**: Multiple theme variants
- **Customization**: Font, colors, and layout options

## 🔧 Customization

### Adding Custom Themes
1. Create theme directory in `themes/`
2. Add configuration files for each component
3. Use the theme management system to install

### Modifying Configurations
- User configs override defaults automatically
- Edit files in `~/.config/` directories
- Use `latiarch-menu` for guided configuration

### Package Management
- Base packages: `install/latiarch-base.packages`
- Additional packages: `install/latiarch-other.packages`
- AUR packages: `install/latiarch-aur.packages`

## 🛡️ Security Features

- **GPG Configuration**: Secure key management
- **Firewall Setup**: Basic firewall configuration
- **User Permissions**: Proper permission management
- **Secure Boot**: Support for secure boot configurations

## 🚨 Troubleshooting

### Common Issues

**Installation fails:**
```bash
# Ensure you have internet connection and root access
sudo pacman -Syu
```

**Theme not applying:**
```bash
# Restart Hyprland session
hyprctl reload
```

**Missing applications:**
```bash
# Check package installation
latiarch-menu → Setup → Packages
```

### Getting Help
- Check the [Issues](https://github.com/ryanburkii/latiarch/issues) page
- Review configuration files in `~/.config/`
- Use `latiarch-menu` for system diagnostics

## 🤝 Contributing

Contributions are welcome! Please feel free to submit:
- New themes
- Configuration improvements
- Bug fixes
- Documentation updates

### Development Setup
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Hyprland** - The amazing Wayland compositor
- **Arch Linux** - The flexible base distribution
- **Theme Authors** - All the beautiful theme creators
- **Community** - The amazing Linux community

## ⭐ Star History

If you find LatiArch useful, please consider giving it a star on GitHub!

---

**Made with ❤️ for the Linux community**

*LatiArch - Your beautiful Arch Linux desktop environment*