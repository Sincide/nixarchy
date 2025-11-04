echo "Update and restart Walker to resolve stuck Archy menu"

sudo pacman -Sy --noconfirm walker-bin
archy-restart-walker
