#!/usr/bin/env bash

# Usage: ./user/set-current.sh scott

set -e

BDG_HOME_DIR="$HOME/.bdg"

mkdir -p $BDG_HOME_DIR

CURRENT_USER_FILE="$BDG_HOME_DIR/current-user"

# eg: scott
USER_NAME=$1

echo $USER_NAME > $CURRENT_USER_FILE
