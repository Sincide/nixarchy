#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eE

# Set ARCHY_PATH to ~/archy
export ARCHY_PATH="$HOME/archy"
export PATH="$ARCHY_PATH/bin:$PATH"
ARCHY_INSTALL="$ARCHY_PATH/install"

# Preparation
source $ARCHY_INSTALL/preflight/show-env.sh
source $ARCHY_INSTALL/preflight/trap-errors.sh
source $ARCHY_INSTALL/preflight/guard.sh
source $ARCHY_INSTALL/preflight/chroot.sh
source $ARCHY_INSTALL/preflight/repositories.sh
source $ARCHY_INSTALL/preflight/migrations.sh
source $ARCHY_INSTALL/preflight/first-run-mode.sh

# Packaging
source $ARCHY_INSTALL/packages.sh
source $ARCHY_INSTALL/packaging/asdcontrol.sh
source $ARCHY_INSTALL/packaging/fonts.sh
source $ARCHY_INSTALL/packaging/lazyvim.sh
source $ARCHY_INSTALL/packaging/webapps.sh
source $ARCHY_INSTALL/packaging/tuis.sh

# Configuration
source $ARCHY_INSTALL/config/config.sh
source $ARCHY_INSTALL/config/theme.sh
source $ARCHY_INSTALL/config/branding.sh
source $ARCHY_INSTALL/config/fish.sh
source $ARCHY_INSTALL/config/git.sh
source $ARCHY_INSTALL/config/gpg.sh
source $ARCHY_INSTALL/config/timezones.sh
source $ARCHY_INSTALL/config/increase-sudo-tries.sh
source $ARCHY_INSTALL/config/increase-lockout-limit.sh
source $ARCHY_INSTALL/config/ssh-flakiness.sh
source $ARCHY_INSTALL/config/detect-keyboard-layout.sh
source $ARCHY_INSTALL/config/xcompose.sh
source $ARCHY_INSTALL/config/mise-ruby.sh
source $ARCHY_INSTALL/config/docker.sh
source $ARCHY_INSTALL/config/mimetypes.sh
source $ARCHY_INSTALL/config/hardware/network.sh
source $ARCHY_INSTALL/config/hardware/fix-fkeys.sh
source $ARCHY_INSTALL/config/hardware/bluetooth.sh
source $ARCHY_INSTALL/config/hardware/printer.sh
source $ARCHY_INSTALL/config/hardware/usb-autosuspend.sh
source $ARCHY_INSTALL/config/hardware/ignore-power-button.sh
source $ARCHY_INSTALL/config/hardware/nvidia.sh

# Login
source $ARCHY_INSTALL/login/limine-snapper.sh

# Updates
sudo updatedb

# Update system packages
sudo pacman -Syu --noconfirm

# Reboot
clear
tte -i ~/archy/logo.txt --frame-rate 920 laseretch
echo
echo "You're done! So we're ready to reboot now..." | tte --frame-rate 640 wipe

if sudo test -f /etc/sudoers.d/99-archy-installer; then
  sudo rm -f /etc/sudoers.d/99-archy-installer &>/dev/null
  echo -e "\nRemember to remove USB installer!\n\n"
fi

sleep 5
reboot
