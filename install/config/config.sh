#!/bin/bash

# Symlink Nixarchy configs
mkdir -p ~/.config

# Symlink each config directory/file from ~/nixarchy/config to ~/.config
# Skip nvim as it's handled specially by lazyvim.sh (merged with LazyVim starter)
for item in ~/nixarchy/config/*; do
  if [ -e "$item" ]; then
    target_name=$(basename "$item")

    # Skip nvim directory - handled by lazyvim.sh
    if [ "$target_name" = "nvim" ]; then
      continue
    fi

    target_path="$HOME/.config/$target_name"

    # Remove existing file/dir/symlink if it exists
    rm -rf "$target_path"

    # Create symlink
    ln -sf "$item" "$target_path"
  fi
done

# Symlink bashrc from Nixarchy
rm -f ~/.bashrc
ln -sf ~/nixarchy/default/bashrc ~/.bashrc
