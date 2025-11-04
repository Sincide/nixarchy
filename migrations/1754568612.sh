echo "Update Waybar config to fix path issue with update-available icon click"

if grep -q "alacritty --class Nixarchy --title Nixarchy -e nixarchy-update" ~/.config/waybar/config.jsonc; then
  sed -i 's|\("on-click": "alacritty --class Nixarchy --title Nixarchy -e \)nixarchy-update"|\1nixarchy-update"|' ~/.config/waybar/config.jsonc
  nixarchy-restart-waybar
fi
