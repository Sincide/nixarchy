#!/bin/bash

gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
gsettings set org.gnome.desktop.interface icon-theme "Yaru-blue"

# Setup theme links
mkdir -p ~/.config/archy/themes
for f in ~/archy/themes/*; do ln -nfs "$f" ~/.config/archy/themes/; done

# Set initial theme
mkdir -p ~/.config/archy/current
ln -snf ~/.config/archy/themes/tokyo-night ~/.config/archy/current/theme
ln -snf ~/.config/archy/current/theme/backgrounds/1-scenery-pink-lakeside-sunset-lake-landscape-scenic-panorama-7680x3215-144.png ~/.config/archy/current/background

# Set specific app links for current theme
ln -snf ~/.config/archy/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua

mkdir -p ~/.config/btop/themes
ln -snf ~/.config/archy/current/theme/btop.theme ~/.config/btop/themes/current.theme

mkdir -p ~/.config/mako
ln -snf ~/.config/archy/current/theme/mako.ini ~/.config/mako/config
