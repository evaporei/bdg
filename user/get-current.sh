#!/usr/bin/env bash

# Usage: ./user/get-current.sh

set -e

BDG_HOME_DIR="$HOME/.bdg"

mkdir -p $BDG_HOME_DIR

CURRENT_USER_FILE="$BDG_HOME_DIR/current-user"

cat $CURRENT_USER_FILE
