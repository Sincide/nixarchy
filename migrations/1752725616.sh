echo "Make light themes possible"
if [[ -f ~/.local/share/applications/blueberry.desktop ]]; then
  rm -f ~/.local/share/applications/blueberry.desktop
  rm -f ~/.local/share/applications/org.pulseaudio.pavucontrol.desktop
  update-desktop-database ~/.local/share/applications/

  gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
  gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"

  archy-refresh-waybar
fi

if [[ ! -L "~/.config/archy/themes/rose-pine" ]]; then
  ln -snf ~/archy/themes/rose-pine ~/.config/archy/themes/
fi
