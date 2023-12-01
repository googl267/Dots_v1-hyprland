#!/usr/bin/env bash
cd "${0%/*}"

cp -r .config/* ~/.config
cp -r .themes/* ~/.themes
cp -r flavours/* ~/.local/share/flavours/