#!/usr/bin/env bash
cd "${0%/*}"

CHROME_DIR=$({
        find ~/.mozilla/firefox -type d -name "*.default-release"
} || {
        find ~/.waterfox -type d -name "*.default-release"
})

cp -r .config/* ~/.config
cp -r .themes/* ~/.themes
cp -r flavours/* ~/.local/share/flavours/
cp -r chrome/* $CHROME_DIR/chrome/