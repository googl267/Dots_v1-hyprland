#!/usr/bin/env bash
cd "${0%/*}"

CHROME_DIR=$({
        find ~/.mozilla/firefox -type d -name "*.default-release"
} || {
        find ~/.waterfox -type d -name "*.default-release"
})

cp -a .config/* ~/.config
cp -a .themes/* ~/.themes
cp -a flavours/* ~/.local/share/flavours
cp -a chrome/* $CHROME_DIR/chrome/