#!/bin/bash
cd "${0%/*}"

ls ./base16/templates/flavours/templates
read -p "Enter Style: " style
cp ./base16/templates/flavours/templates/$style.mustache ~/.config/flavours/config.toml