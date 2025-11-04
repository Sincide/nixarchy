echo "Start screensaver automatically after 1 minute and stop before locking"

if ! grep -q "archy-launch-screensaver" ~/.config/hypr/hypridle.conf; then
  archy-refresh-hypridle
  archy-refresh-hyprlock
fi
