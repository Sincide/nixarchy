echo "Add new matte black theme"

if [[ ! -L "~/.config/nixarchy/themes/matte-black" ]]; then
  ln -snf ~/nixarchy/themes/matte-black ~/.config/nixarchy/themes/
fi
