#!/bin/bash

# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(LATIARCH_CHROOT_INSTALL|LATIARCH_ONLINE_INSTALL|LATIARCH_USER_NAME|LATIARCH_USER_EMAIL|USER|HOME|LATIARCH_REPO|LATIARCH_REF|LATIARCH_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done
