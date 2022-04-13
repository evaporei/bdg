#!/usr/bin/env bash

# Usage: ./user/list.sh

set -e

BDG_HOME_DIR="$HOME/.bdg"

mkdir -p $BDG_HOME_DIR

USERS_FILE="$BDG_HOME_DIR/users"

cat $USERS_FILE
