echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/archy/themes/osaka-jade ]]; then
  rm -rf ~/.config/archy/themes/osaka-jade
  git -C ~/archy checkout -f themes/osaka-jade
  ln -nfs ~/archy/themes/osaka-jade ~/.config/archy/themes/osaka-jade
fi
