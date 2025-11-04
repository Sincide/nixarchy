echo "Install Plymouth splash screen"

sudo pacman -Sy --needed --noconfirm uwsm plymouth
source "$HOME/nixarchy/install/login/plymouth.sh"
