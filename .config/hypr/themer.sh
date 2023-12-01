#!/usr/bin/env bash
cd "${0%/*}"

# simple message diolog
echo "Simple Hyprland Theme Switcher"
echo
echo "-- !! WARNING !! --"
echo "Changing your theme will log you out of hyprland"
echo "Please save any unsaved work and end any running processes"


# user input no need to touch
read -p "Continue? [y] " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    clear

    echo "Available layouts: "
    ls ./theme/layouts
    read -p "Layout: " LAYOUT
    if [ ! -d "./theme/layouts/$LAYOUT" ]; then
        echo "layout does not exist D: (did you have a typo?)"
        exit
    fi

    echo 

    echo "Available colors: "
    ls ./theme/colors
    read -p "Colors: " COLORS
    if [ ! -d "./theme/colors/$COLORS" ]; then
        echo "color scheme does not exist D: (did you have a typo?)"
        exit
    fi

    bash ./theme/changeLayout.sh $LAYOUT $COLORS
fi