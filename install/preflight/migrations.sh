#!/bin/bash

NIXARCHY_MIGRATIONS_STATE_PATH=~/.local/state/nixarchy/migrations
mkdir -p $NIXARCHY_MIGRATIONS_STATE_PATH

for file in ~/nixarchy/migrations/*.sh; do
  touch "$NIXARCHY_MIGRATIONS_STATE_PATH/$(basename "$file")"
done
