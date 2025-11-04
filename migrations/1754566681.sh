echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/nixarchy/themes/osaka-jade ]]; then
  rm -rf ~/.config/nixarchy/themes/osaka-jade
  git -C ~/nixarchy checkout -f themes/osaka-jade
  ln -nfs ~/nixarchy/themes/osaka-jade ~/.config/nixarchy/themes/osaka-jade
fi
