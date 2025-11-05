echo "Lock 1password on screen lock"

if ! grep -q "archy-lock-screen" ~/.config/hypr/hypridle.conf; then
  archy-refresh-hypridle
fi
