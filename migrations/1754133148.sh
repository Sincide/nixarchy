echo "Update Waybar CSS to dim unused workspaces"

if ! grep -q "#workspaces button\.empty" ~/.config/waybar/style.css; then
  archy-refresh-config waybar/style.css
  archy-restart-waybar
fi
