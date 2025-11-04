echo "Enable battery low notifications for laptops"

if ls /sys/class/power_supply/BAT* &>/dev/null && [[ ! -f ~/nixarchy/config/systemd/user/nixarchy-battery-monitor.service ]]; then
  mkdir -p ~/.config/systemd/user

  cp ~/nixarchy/config/systemd/user/nixarchy-battery-monitor.* ~/.config/systemd/user/

  systemctl --user daemon-reload
  systemctl --user enable --now nixarchy-battery-monitor.timer || true
fi
