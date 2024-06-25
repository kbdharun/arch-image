#!/bin/bash

EXEC_FILE="/var/lib/pacman/.init_done"
if [ ! -f "$EXEC_FILE" ]; then
  echo "First time execution of pacman-key --init..."
  pacman-key --init
  touch "$EXEC_FILE"
fi
