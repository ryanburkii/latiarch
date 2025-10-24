#!/bin/bash

run_logged $LATIARCH_INSTALL/login/plymouth.sh
run_logged $LATIARCH_INSTALL/login/limine-snapper.sh
run_logged $LATIARCH_INSTALL/login/enable-mkinitcpio.sh
run_logged $LATIARCH_INSTALL/login/alt-bootloaders.sh
