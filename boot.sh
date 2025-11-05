#!/bin/bash

ansi_art='
   ▄████████    ▄████████  ▄████████    ▄█    █▄     ▄██   ▄
  ███    ███   ███    ███ ███    ███   ███    ███     ███   ██▄
  ███    ███   ███    ███ ███    █▀    ███    ███     ███▄▄▄███
  ███    ███  ▄███▄▄▄▄██▀ ███         ▄███▄▄▄▄███▄▄   ▀▀▀▀▀▀███
▀███████████ ▀▀███▀▀▀▀▀   ███        ▀▀███▀▀▀▀███▀    ▄██   ███
  ███    ███ ▀███████████ ███    █▄    ███    ███     ███   ███
  ███    ███   ███    ███ ███    ███   ███    ███     ███   ███
  ███    █▀    ███    ███ ████████▀    ███    █▀       ▀█████▀
               ███    ███'

clear
echo -e "\n$ansi_art\n"

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Ensure we're running from ~/archy
if [[ "$SCRIPT_DIR" != "$HOME/archy" ]]; then
  echo "Error: This script must be run from ~/archy"
  echo "Current location: $SCRIPT_DIR"
  echo ""
  echo "Please either:"
  echo "  1. Move this directory to ~/archy, or"
  echo "  2. Create a symlink: ln -s $SCRIPT_DIR ~/archy"
  exit 1
fi

echo -e "\nInstallation starting from ~/archy..."
echo -e "All files will be symlinked from this directory.\n"

source ~/archy/install.sh
