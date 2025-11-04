echo "Start screensaver automatically after 1 minute and stop before locking"

if ! grep -q "nixarchy-launch-screensaver" ~/.config/hypr/hypridle.conf; then
  nixarchy-refresh-hypridle
  nixarchy-refresh-hyprlock
fi
