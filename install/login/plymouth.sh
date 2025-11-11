#!/bin/bash

if [ "$(plymouth-set-default-theme)" != "latiarch" ]; then
  sudo cp -r "$HOME/.local/share/latiarch/default/plymouth" /usr/share/plymouth/themes/latiarch/
  sudo plymouth-set-default-theme latiarch
fi
