#!/usr/bin/env bash

# Usage: ./insert.sh cars '{"id": 123, "name": "asdf"}'

set -e

DATA_DIR="$HOME/.bdg/data"

# eg: cars
TABLE=$1
# eg: {"id": 123, "name": "asdf"}
DOCUMENT=$2

mkdir -p $DATA_DIR

echo $DOCUMENT >> "$DATA_DIR/$TABLE"
