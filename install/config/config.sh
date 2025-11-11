#!/bin/bash

# Copy over LatiArch configs
mkdir -p ~/.config
cp -R ~/.local/share/latiarch/config/* ~/.config/

# Copy over default configs (used by scripts)
mkdir -p ~/.config/latiarch
cp -R ~/.local/share/latiarch/default ~/.config/latiarch/

# Use default zshrc from LatiArch
cp ~/.local/share/latiarch/default/zshrc ~/.zshrc

# Change default shell to zsh if it's not already
shell_path="$(command -v zsh || echo /usr/bin/zsh)"

if ! grep -Fxq "$shell_path" /etc/shells; then
  echo "$shell_path" | sudo tee -a /etc/shells >/dev/null
fi

current_shell="$(getent passwd "$USER" | cut -d: -f7)"

if [[ "$current_shell" != "$shell_path" ]]; then
  if [[ -n ${LATIARCH_CHROOT_INSTALL:-} ]]; then
    sudo chsh --root /mnt -s "$shell_path" "$USER"
  else
    sudo chsh -s "$shell_path" "$USER"
  fi
fi
