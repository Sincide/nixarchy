echo "Add new matte black theme"

if [[ ! -L "~/.config/archy/themes/matte-black" ]]; then
  ln -snf ~/archy/themes/matte-black ~/.config/archy/themes/
fi
