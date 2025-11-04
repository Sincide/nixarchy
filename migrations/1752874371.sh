echo "Add Catppuccin Latte light theme"
if [[ ! -L "~/.config/nixarchy/themes/catppuccin-latte" ]]; then
  ln -snf ~/nixarchy/themes/catppuccin-latte ~/.config/nixarchy/themes/
fi
