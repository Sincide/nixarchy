echo "Add UWSM env"

export NIXARCHY_PATH="$HOME/nixarchy"
export PATH="$NIXARCHY_PATH/bin:$PATH"

mkdir -p "$HOME/.config/uwsm/"
nixarchy-refresh-config uwsm/env

echo -e "\n\e[31mNixarchy bins have been added to PATH (and NIXARCHY_PATH is now system-wide).\nYou must immediately relaunch Hyprland or most Nixarchy cmds won't work.\nPlease run Nixarchy > Update again after the quick relaunch is complete.\e[0m"
echo

gum confirm "Ready to relaunch Hyprland? (All applications will be closed)" &&
  touch ~/.local/state/nixarchy/migrations/1751134560.sh &&
  uwsm stop
