echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/nixarchy/themes/ristretto ]]; then
  ln -nfs ~/nixarchy/themes/ristretto ~/.config/nixarchy/themes/
fi
