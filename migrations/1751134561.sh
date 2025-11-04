echo "Add Nixarchy Package Repository"

if ! grep -q "nixarchy" /etc/pacman.conf; then
  sudo sed -i '/^\[core\]/i [nixarchy]\nSigLevel = Optional TrustAll\nServer = https:\/\/pkgs.nixarchy.org\/$arch\/\n' /etc/pacman.conf
  sudo systemctl restart systemd-timesyncd
  sudo pacman -Sy
fi
