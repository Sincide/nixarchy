echo "Ensure screensaver doesn't start while the computer is locked"

if ! grep -q "pidof hyprlock || archy-launch-screensaver" ~/.config/hypr/hypridle.conf; then
  archy-refresh-hypridle
fi
