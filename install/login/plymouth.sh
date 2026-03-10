#!/bin/bash

if ! command -v plymouth-set-default-theme &>/dev/null; then
  sudo pacman -S --noconfirm --needed plymouth
fi

if [ "$(plymouth-set-default-theme)" != "latiarch" ]; then
  sudo cp -r "$HOME/.local/share/latiarch/default/plymouth" /usr/share/plymouth/themes/latiarch/
  sudo plymouth-set-default-theme latiarch
fi
