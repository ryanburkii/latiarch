#!/bin/bash

run_logged $LATIARCH_INSTALL/config/config.sh
run_logged $LATIARCH_INSTALL/config/theme.sh
run_logged $LATIARCH_INSTALL/config/branding.sh
run_logged $LATIARCH_INSTALL/config/gpg.sh
run_logged $LATIARCH_INSTALL/config/increase-sudo-tries.sh
run_logged $LATIARCH_INSTALL/config/increase-lockout-limit.sh
run_logged $LATIARCH_INSTALL/config/detect-keyboard-layout.sh
run_logged $LATIARCH_INSTALL/config/docker.sh
run_logged $LATIARCH_INSTALL/config/hardware/network.sh
run_logged $LATIARCH_INSTALL/config/hardware/usb-autosuspend.sh
run_logged $LATIARCH_INSTALL/config/hardware/ignore-power-button.sh
run_logged $LATIARCH_INSTALL/config/hardware/intel.sh
