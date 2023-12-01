#!/usr/bin/env bash
cd "${0%/*}"

# -- variables --
LAYOUT_PATH=./layouts/$1
source $LAYOUT_PATH/settingsVars.sh

# -- kitty --
cp $LAYOUT_PATH/kitty.conf ~/.config/kitty/kitty.conf

# -- zshrc --
cp $LAYOUT_PATH/.zshrc ~/.zshrc

# -- lf --
cp $LAYOUT_PATH/lf ~/.config/lf/lfrc

# -- wob --
cp $LAYOUT_PATH/wob.ini ~/.config/wob/wob.ini

# -- tofi -- 
cp $LAYOUT_PATH/tofi ~/.config/tofi/config

# -- swaync --
cp $LAYOUT_PATH/swaync.json ~/.config/swaync/config.json
cp $LAYOUT_PATH/swaync.css ~/.config/swaync/style.css
cp $LAYOUT_PATH/colors.css ~/.config/swaync/colors.css

# -- waybar --
cp $LAYOUT_PATH/waybar ~/.config/waybar/config
cp $LAYOUT_PATH/waybar.css ~/.config/waybar/style.css
cp $LAYOUT_PATH/colors.css ~/.config/waybar/colors.css

# -- swaylock fx --
cp $LAYOUT_PATH/swaylock ~/.config/swaylock/config

# -- gtk config --
gsettings set org.gnome.desktop.interface gtk-theme "$GTK_THEME"
gsettings set org.gnome.desktop.wm.preferences theme "$GTK_THEME"
gsettings set org.gnome.desktop.interface font-name "$FONT"
gsettings set org.gnome.desktop.interface cursor-theme "$CURSOR_THEME"

# -- sddm config --
# set the theme
sudo cp $LAYOUT_PATH/sddm /etc/sddm.conf.d/config
# copy the config
sudo cp $LAYOUT_PATH/sddm.conf /usr/share/sddm/themes/boo/theme.conf

# -- hyprland --
cp $LAYOUT_PATH/hypr.conf ./theme.conf

# -- change the colors --
bash "./changeColors.sh" $2

