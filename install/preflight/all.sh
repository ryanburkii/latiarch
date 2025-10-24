#!/bin/bash

source $LATIARCH_INSTALL/preflight/guard.sh
source $LATIARCH_INSTALL/preflight/begin.sh
run_logged $LATIARCH_INSTALL/preflight/show-env.sh
run_logged $LATIARCH_INSTALL/preflight/first-run-mode.sh
run_logged $LATIARCH_INSTALL/preflight/disable-mkinitcpio.sh
