#!/usr/bin/env bash

# Usage: ./drop.sh cars

set -e

DATA_DIR="$HOME/.bdg/data"

# eg: cars
TABLE=$1

rm -f "$DATA_DIR/$TABLE"
