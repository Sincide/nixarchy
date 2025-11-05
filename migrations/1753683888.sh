echo "Adding Archy version info to fastfetch"
if ! grep -q "archy" ~/.config/fastfetch/config.jsonc; then
  cp ~/archy/config/fastfetch/config.jsonc ~/.config/fastfetch/
fi

