#!/bin/bash

# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
include "%H/nixarchy/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$NIXARCHY_USER_NAME"
<Multi_key> <space> <e> : "$NIXARCHY_USER_EMAIL"
EOF
