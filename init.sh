#!/usr/bin/env bash

set -e

mkdir -p ~/.bdg

# TODO: should validate if 'default' user already exists

./user/create.sh default
./user/set-current.sh default
# # TODO: create 'default' database
# ./db/create.sh default

tree ~/.bdg
