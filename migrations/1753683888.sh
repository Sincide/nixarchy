echo "Adding Nixarchy version info to fastfetch"
if ! grep -q "nixarchy" ~/.config/fastfetch/config.jsonc; then
  cp ~/nixarchy/config/fastfetch/config.jsonc ~/.config/fastfetch/
fi

