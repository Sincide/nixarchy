#!/bin/bash

# Set fish as the default shell
if ! grep -q "$(which fish)" /etc/shells; then
    echo "$(which fish)" | sudo tee -a /etc/shells
fi

# Change user's default shell to fish
sudo chsh -s "$(which fish)" "$USER"

echo "Fish shell configured as default"
