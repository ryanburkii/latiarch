#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define LatiArch locations
export LATIARCH_PATH="$HOME/.local/share/latiarch"
export LATIARCH_INSTALL="$LATIARCH_PATH/install"
export LATIARCH_INSTALL_LOG_FILE="/var/log/latiarch-install.log"
export PATH="$LATIARCH_PATH/bin:$PATH"

# Install
source "$LATIARCH_INSTALL/helpers/all.sh"
source "$LATIARCH_INSTALL/preflight/all.sh"
source "$LATIARCH_INSTALL/packaging/all.sh"
source "$LATIARCH_INSTALL/config/all.sh"
source "$LATIARCH_INSTALL/login/all.sh"
source "$LATIARCH_INSTALL/post-install/all.sh"
