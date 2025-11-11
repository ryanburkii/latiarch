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

if [[ -x "$shell_path" ]]; then
  sudo chsh -s "$shell_path" "$USER"
fi