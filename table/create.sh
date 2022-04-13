#!/usr/bin/env bash

# Usage: ./table/create.sh cars

set -e

DATA_DIR="$HOME/.bdg/data"

# eg: cars
TABLE=$1

mkdir -p $DATA_DIR

touch "$DATA_DIR/$TABLE"
