echo "Add Archy Package Repository"

if ! grep -q "archy" /etc/pacman.conf; then
  sudo sed -i '/^\[core\]/i [archy]\nSigLevel = Optional TrustAll\nServer = https:\/\/pkgs.archy.org\/$arch\/\n' /etc/pacman.conf
  sudo systemctl restart systemd-timesyncd
  sudo pacman -Sy
fi
