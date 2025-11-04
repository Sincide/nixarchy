echo "Add Terminal Text Effects for rizzing Archy"

if ! pacman -Q python-terminaltexteffects &>/dev/null; then
  sudo pacman -S --noconfirm python-terminaltexteffects
fi
