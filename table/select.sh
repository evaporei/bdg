#!/usr/bin/env bash

# Usage:
# $ ./table/select.sh '.' cars
# $ ./table/select.sh '.id,.name' cars
# $ ./table/select.sh '.name' cars '.id==456'

set -e

DATA_DIR="$HOME/.bdg/data"

# eg: '.'
# - '.'
# - '.id,.name'
ATTRIBUTES=$1
# eg: cars
TABLE=$2
# eg: '.id==456'
FILTERS=$3

if [ -z "$FILTERS" ]; then
  cat "$DATA_DIR/$TABLE" | jq $ATTRIBUTES
else
  cat "$DATA_DIR/$TABLE" | jq "$ATTRIBUTES | select($FILTERS)"
fi
