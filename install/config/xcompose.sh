#!/bin/bash

# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
include "%H/archy/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$ARCHY_USER_NAME"
<Multi_key> <space> <e> : "$ARCHY_USER_EMAIL"
EOF
