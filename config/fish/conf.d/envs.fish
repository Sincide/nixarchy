# Environment variables

# Editor
set -gx EDITOR nvim
set -gx SUDO_EDITOR $EDITOR
set -gx VISUAL $EDITOR

# Terminal
set -gx TERMINAL alacritty

# Bat theme
set -gx BAT_THEME ansi

# History
set -g fish_history_size 32768
