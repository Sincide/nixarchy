echo "Ensure screensaver doesn't start while the computer is locked"

if ! grep -q "pidof hyprlock || nixarchy-launch-screensaver" ~/.config/hypr/hypridle.conf; then
  nixarchy-refresh-hypridle
fi
