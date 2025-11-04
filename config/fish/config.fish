# Archy Fish Configuration
# This is the main configuration file for fish shell

# Source all configuration modules
source ~/archy/config/fish/conf.d/path.fish
source ~/archy/config/fish/conf.d/aliases.fish
source ~/archy/config/fish/conf.d/envs.fish

# Initialize zoxide for smart directory jumping
if type -q zoxide
    zoxide init fish | source
end

# Initialize mise for version management
if type -q mise
    mise activate fish | source
end
