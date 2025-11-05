echo "Update Waybar config to fix path issue with update-available icon click"

if grep -q "alacritty --class Archy --title Archy -e archy-update" ~/.config/waybar/config.jsonc; then
  sed -i 's|\("on-click": "alacritty --class Archy --title Archy -e \)archy-update"|\1archy-update"|' ~/.config/waybar/config.jsonc
  archy-restart-waybar
fi
