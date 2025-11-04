echo "Add new Archy Menu icon to Waybar"

mkdir -p ~/.local/share/fonts
cp ~/archy/config/archy.ttf ~/.local/share/fonts/
fc-cache

echo
gum confirm "Replace current Waybar config (backup will be made)?" && archy-refresh-waybar
