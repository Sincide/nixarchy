echo "Update Waybar CSS to dim unused workspaces"

if ! grep -q "#workspaces button\.empty" ~/.config/waybar/style.css; then
  nixarchy-refresh-config waybar/style.css
  nixarchy-restart-waybar
fi
