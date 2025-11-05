echo "Update fastfetch config with new Archy logo"

archy-refresh-config fastfetch/config.jsonc

mkdir -p ~/.config/archy/branding
cp $ARCHY_PATH/icon.txt ~/.config/archy/branding/about.txt
