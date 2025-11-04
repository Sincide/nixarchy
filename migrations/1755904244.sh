echo "Update fastfetch config with new Nixarchy logo"

nixarchy-refresh-config fastfetch/config.jsonc

mkdir -p ~/.config/nixarchy/branding
cp $NIXARCHY_PATH/icon.txt ~/.config/nixarchy/branding/about.txt
