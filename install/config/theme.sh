#!/bin/bash

gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
gsettings set org.gnome.desktop.interface icon-theme "Yaru-blue"

# Setup theme links
mkdir -p ~/.config/nixarchy/themes
for f in ~/nixarchy/themes/*; do ln -nfs "$f" ~/.config/nixarchy/themes/; done

# Set initial theme
mkdir -p ~/.config/nixarchy/current
ln -snf ~/.config/nixarchy/themes/tokyo-night ~/.config/nixarchy/current/theme
ln -snf ~/.config/nixarchy/current/theme/backgrounds/1-scenery-pink-lakeside-sunset-lake-landscape-scenic-panorama-7680x3215-144.png ~/.config/nixarchy/current/background

# Set specific app links for current theme
ln -snf ~/.config/nixarchy/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua

mkdir -p ~/.config/btop/themes
ln -snf ~/.config/nixarchy/current/theme/btop.theme ~/.config/btop/themes/current.theme

mkdir -p ~/.config/mako
ln -snf ~/.config/nixarchy/current/theme/mako.ini ~/.config/mako/config
