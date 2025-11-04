echo "Update Waybar for new Nixarchy menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  nixarchy-refresh-waybar
fi
