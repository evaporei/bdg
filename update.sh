#!/usr/bin/env bash

# Usage:
# $ ./update.sh '.id=456' cars

set -e

DATA_DIR="$HOME/.bdg/data"

# eg: '.'
# - '.'
# - '.id,.name'
ATTRIBUTES=$1
# eg: cars
TABLE=$2

cat <<< $(jq $ATTRIBUTES "$DATA_DIR/$TABLE") > "$DATA_DIR/$TABLE"
