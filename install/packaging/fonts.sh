#!/bin/bash

# Nixarchy logo in a font for Waybar use
mkdir -p ~/.local/share/fonts
cp ~/nixarchy/config/nixarchy.ttf ~/.local/share/fonts/
fc-cache
