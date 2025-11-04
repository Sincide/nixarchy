echo "Lock 1password on screen lock"

if ! grep -q "nixarchy-lock-screen" ~/.config/hypr/hypridle.conf; then
  nixarchy-refresh-hypridle
fi
