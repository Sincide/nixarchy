echo "Allow updating of timezone by right-clicking on the clock (or running nixarchy-cmd-tzupdate)"
if ! command -v tzupdate &>/dev/null; then
  bash ~/nixarchy/install/config/timezones.sh
  nixarchy-refresh-waybar
fi
