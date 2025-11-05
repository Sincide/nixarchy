# PATH configuration for Archy

# Add Archy bin to PATH
set -gx ARCHY_PATH $HOME/archy
fish_add_path -g $ARCHY_PATH/bin
fish_add_path -g $HOME/.local/bin
fish_add_path -g ./bin
