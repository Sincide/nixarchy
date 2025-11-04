#!/bin/bash

ARCHY_MIGRATIONS_STATE_PATH=~/.local/state/archy/migrations
mkdir -p $ARCHY_MIGRATIONS_STATE_PATH

for file in ~/archy/migrations/*.sh; do
  touch "$ARCHY_MIGRATIONS_STATE_PATH/$(basename "$file")"
done
