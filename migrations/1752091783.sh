echo "Install Plymouth splash screen"

sudo pacman -Sy --needed --noconfirm uwsm plymouth
source "$HOME/archy/install/login/plymouth.sh"
