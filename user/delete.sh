#!/usr/bin/env bash

# Usage: ./user/delete.sh scott

set -e

BDG_HOME_DIR="$HOME/.bdg"

mkdir -p $BDG_HOME_DIR

USERS_FILE="$BDG_HOME_DIR/users"
USERS_TMP_FILE="$BDG_HOME_DIR/users_tmp"

# eg: scott
USER_NAME=$1

grep -v $USER_NAME $USERS_FILE > $USERS_TMP_FILE && mv $USERS_TMP_FILE $USERS_FILE
