echo "Add Catppuccin Latte light theme"
if [[ ! -L "~/.config/archy/themes/catppuccin-latte" ]]; then
  ln -snf ~/archy/themes/catppuccin-latte ~/.config/archy/themes/
fi
