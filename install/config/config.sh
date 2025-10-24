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
if [ "$SHELL" != "/bin/zsh" ] && [ "$SHELL" != "/usr/bin/zsh" ]; then
  echo "Changing default shell to zsh..."
  chsh -s /bin/zsh
  echo "Default shell changed to zsh. Please log out and log back in for changes to take effect."
fi
