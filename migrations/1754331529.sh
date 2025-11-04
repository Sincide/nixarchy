echo "Update Waybar for new Archy menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  archy-refresh-waybar
fi
