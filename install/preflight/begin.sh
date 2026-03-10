#!/bin/bash

clear_logo
gum style --foreground 7 --padding "1 0 0 $PADDING_LEFT" "Installing..."
echo

# Pre-authenticate sudo before the log monitor starts so password prompts
# don't disrupt the installation UI
sudo -v

# Grant passwordless sudo for the duration of installation (cleaned up in finished.sh)
echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/99-latiarch-installer > /dev/null
sudo chmod 440 /etc/sudoers.d/99-latiarch-installer

# Keep sudo credentials alive throughout installation
(while true; do sudo -n true; sleep 60; done) &
export SUDO_KEEPALIVE_PID=$!

start_install_log
