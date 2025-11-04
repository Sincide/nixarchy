#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eE

# Set NIXARCHY_PATH to ~/nixarchy
export NIXARCHY_PATH="$HOME/nixarchy"
export PATH="$NIXARCHY_PATH/bin:$PATH"
NIXARCHY_INSTALL="$NIXARCHY_PATH/install"

# Preparation
source $NIXARCHY_INSTALL/preflight/show-env.sh
source $NIXARCHY_INSTALL/preflight/trap-errors.sh
source $NIXARCHY_INSTALL/preflight/guard.sh
source $NIXARCHY_INSTALL/preflight/chroot.sh
source $NIXARCHY_INSTALL/preflight/repositories.sh
source $NIXARCHY_INSTALL/preflight/migrations.sh
source $NIXARCHY_INSTALL/preflight/first-run-mode.sh

# Packaging
source $NIXARCHY_INSTALL/packages.sh
source $NIXARCHY_INSTALL/packaging/asdcontrol.sh
source $NIXARCHY_INSTALL/packaging/fonts.sh
source $NIXARCHY_INSTALL/packaging/lazyvim.sh
source $NIXARCHY_INSTALL/packaging/webapps.sh
source $NIXARCHY_INSTALL/packaging/tuis.sh

# Configuration
source $NIXARCHY_INSTALL/config/config.sh
source $NIXARCHY_INSTALL/config/theme.sh
source $NIXARCHY_INSTALL/config/branding.sh
source $NIXARCHY_INSTALL/config/git.sh
source $NIXARCHY_INSTALL/config/gpg.sh
source $NIXARCHY_INSTALL/config/timezones.sh
source $NIXARCHY_INSTALL/config/increase-sudo-tries.sh
source $NIXARCHY_INSTALL/config/increase-lockout-limit.sh
source $NIXARCHY_INSTALL/config/ssh-flakiness.sh
source $NIXARCHY_INSTALL/config/detect-keyboard-layout.sh
source $NIXARCHY_INSTALL/config/xcompose.sh
source $NIXARCHY_INSTALL/config/mise-ruby.sh
source $NIXARCHY_INSTALL/config/docker.sh
source $NIXARCHY_INSTALL/config/mimetypes.sh
source $NIXARCHY_INSTALL/config/hardware/network.sh
source $NIXARCHY_INSTALL/config/hardware/fix-fkeys.sh
source $NIXARCHY_INSTALL/config/hardware/bluetooth.sh
source $NIXARCHY_INSTALL/config/hardware/printer.sh
source $NIXARCHY_INSTALL/config/hardware/usb-autosuspend.sh
source $NIXARCHY_INSTALL/config/hardware/ignore-power-button.sh
source $NIXARCHY_INSTALL/config/hardware/nvidia.sh

# Login
source $NIXARCHY_INSTALL/login/plymouth.sh
source $NIXARCHY_INSTALL/login/limine-snapper.sh
source $NIXARCHY_INSTALL/login/alt-bootloaders.sh

# Updates
sudo updatedb

# Update system packages
sudo pacman -Syu --noconfirm

# Reboot
clear
tte -i ~/nixarchy/logo.txt --frame-rate 920 laseretch
echo
echo "You're done! So we're ready to reboot now..." | tte --frame-rate 640 wipe

if sudo test -f /etc/sudoers.d/99-nixarchy-installer; then
  sudo rm -f /etc/sudoers.d/99-nixarchy-installer &>/dev/null
  echo -e "\nRemember to remove USB installer!\n\n"
fi

sleep 5
reboot
