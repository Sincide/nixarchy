echo "Add UWSM env"

export ARCHY_PATH="$HOME/archy"
export PATH="$ARCHY_PATH/bin:$PATH"

mkdir -p "$HOME/.config/uwsm/"
archy-refresh-config uwsm/env

echo -e "\n\e[31mArchy bins have been added to PATH (and ARCHY_PATH is now system-wide).\nYou must immediately relaunch Hyprland or most Archy cmds won't work.\nPlease run Archy > Update again after the quick relaunch is complete.\e[0m"
echo

gum confirm "Ready to relaunch Hyprland? (All applications will be closed)" &&
  touch ~/.local/state/archy/migrations/1751134560.sh &&
  uwsm stop
