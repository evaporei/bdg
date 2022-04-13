#!/usr/bin/env bash

# Usage:
# $ ./table/select.sh '.' cars
# $ ./table/select.sh '.id,.name' cars

set -e

DATA_DIR="$HOME/.bdg/data"

# eg: '.'
# - '.'
# - '.id,.name'
ATTRIBUTES=$1
# eg: cars
TABLE=$2

cat "$DATA_DIR/$TABLE" | jq $ATTRIBUTES
