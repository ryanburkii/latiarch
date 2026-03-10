#!/bin/bash

# Install all base packages
echo "Installing base packages..."
mapfile -t packages < <(grep -v '^#' "$LATIARCH_INSTALL/latiarch-base.packages" | grep -v '^$')
if [ ${#packages[@]} -gt 0 ]; then
    sudo pacman -S --noconfirm --needed "${packages[@]}"
    if [ $? -ne 0 ]; then
        echo "Warning: Some base packages failed to install. Continuing..."
    else
        echo "Base packages installed successfully."
    fi
else
    echo "No base packages to install."
fi

# Install yay if not already installed
if ! command -v yay &> /dev/null; then
    echo "Installing yay..."
    cd /tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm < /dev/tty
    cd /
    rm -rf /tmp/yay
fi

# Install AUR packages
if [ -f "$LATIARCH_INSTALL/latiarch-aur.packages" ]; then
    echo "Installing AUR packages..."
    mapfile -t aur_packages < <(grep -v '^#' "$LATIARCH_INSTALL/latiarch-aur.packages" | grep -v '^$')
    if [ ${#aur_packages[@]} -gt 0 ]; then
        yay -S --noconfirm --needed "${aur_packages[@]}" < /dev/tty
    fi
fi
