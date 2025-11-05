echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/archy/themes/ristretto ]]; then
  ln -nfs ~/archy/themes/ristretto ~/.config/archy/themes/
fi
