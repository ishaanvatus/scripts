#!/bin/bash

filename=$(basename "$1" | cut -d. -f1)
sudo ln -sf "$(pwd)/$filename.sh" "/usr/local/bin/$filename"
