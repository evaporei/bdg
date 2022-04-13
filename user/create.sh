#!/usr/bin/env bash

# Usage: ./user/create.sh scott

set -e

BDG_HOME_DIR="$HOME/.bdg"

mkdir -p $BDG_HOME_DIR

USERS_FILE="$BDG_HOME_DIR/users"

# eg: scott
USER_NAME=$1

echo $USER_NAME >> $USERS_FILE
