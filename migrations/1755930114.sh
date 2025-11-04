echo "Add new Nixarchy Menu icon to Waybar"

mkdir -p ~/.local/share/fonts
cp ~/nixarchy/config/nixarchy.ttf ~/.local/share/fonts/
fc-cache

echo
gum confirm "Replace current Waybar config (backup will be made)?" && nixarchy-refresh-waybar
