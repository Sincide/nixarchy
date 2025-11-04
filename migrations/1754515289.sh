echo "Update and restart Walker to resolve stuck Nixarchy menu"

sudo pacman -Sy --noconfirm walker-bin
nixarchy-restart-walker
