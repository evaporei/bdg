#!/usr/bin/env bash

set -e

tree ~/.bdg

while true; do
    read -p "Are you sure? [n/Y] " yn
    case $yn in
        [Yy]* ) echo 'reset... 💥' && rm -rf ~/.bdg/ && break;;
        [Nn]* ) echo 'No reset happened' && exit 0;;
        * ) echo "Please answer yes or no.";;
    esac
done

# read -p 'Are you sure? ' -n 1 -r
#
# echo # move to new line
#
# if [[ ! $REPLY =~ ^[Yy]$ ]]; then
#   echo 'No reset happened'
#   exit 0
# fi




