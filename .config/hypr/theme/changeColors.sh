#!/usr/bin/env bash
cd "${0%/*}"

source ./colors/$1/colors.sh

## -- Background (swww) --
sed -i 's/wallpaper = eDP-1,.*/wallpaper = eDP-1,~\/.config\/hypr\/theme\/colors\/'$1'\/'$image'/g' ~/.config/hypr/hyprpaper.conf
sed -i 's/preload = .*/preload = ~\/.config\/hypr\/theme\/colors\/'$1'\/'$image'/g' ~/.config/hypr/hyprpaper.conf

## -- Hyprland --
dir=~/.config/hypr/theme/theme.conf

find $dir -type f -exec sed -i 's/$TEXT/'$text'/g' {} \;
find $dir -type f -exec sed -i 's/$ACCENT/'$accent'/g' {} \;
find $dir -type f -exec sed -i 's/$RED/'$red'/g' {} \;
find $dir -type f -exec sed -i 's/$GREEN/'$green'/g' {} \;
find $dir -type f -exec sed -i 's/$YELLOW/'$yellow'/g' {} \;
find $dir -type f -exec sed -i 's/$BLUE/'$blue'/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER0/'$layer0'/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER1/'$layer1'/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER2/'$layer2'/g' {} \;

## -- Folders --
gsettings set org.gnome.desktop.interface icon-theme "'$ICONS'"
sudo papirus-folders -C $FOLDER_THEME --theme $ICONS

## -- GTK --
sharp_GTK_DIR=~/.themes/sharp_gtk
solid_GTK_DIR=~/.themes/solid_gtk

# sharp gtk
dir=$sharp_GTK_DIR/gtk-3.0/colors.css
sed -i 's/@define-color background .*/@define-color background #'$layer0';/g' $dir
sed -i 's/@define-color background_alt .*/@define-color background_alt #'$layer1';/g' $dir
sed -i 's/@define-color background_urgent .*/@define-color background_urgent #'$layer2';/g' $dir
sed -i 's/@define-color foreground .*/@define-color foreground #'$text';/g' $dir
sed -i 's/@define-color accent .*/@define-color accent #'$accent';/g' $dir

dir=$sharp_GTK_DIR/gtk-2.0/gtkrc
sed -i 's/gtk-color-scheme = "foreground:.*/gtk-color-scheme = "foreground:#'$text'"/g' $dir
sed -i 's/gtk-color-scheme = "background:.*/gtk-color-scheme = "background:#'$layer0'"/g' $dir
sed -i 's/gtk-color-scheme = "background_alt:.*/gtk-color-scheme = "background_alt:#'$layer1'"/g' $dir
sed -i 's/gtk-color-scheme = "accent:.*/gtk-color-scheme = "accent:#'$accent'"/g' $dir

# solid gtk
dir=$solid_GTK_DIR/gtk-3.0/colors.css
sed -i 's/@define-color background .*/@define-color background #'$layer0';/g' $dir
sed -i 's/@define-color background_alt .*/@define-color background_alt #'$layer1';/g' $dir
sed -i 's/@define-color background_urgent .*/@define-color background_urgent #'$layer2';/g' $dir
sed -i 's/@define-color foreground .*/@define-color foreground #'$text';/g' $dir
sed -i 's/@define-color accent .*/@define-color accent #'$accent';/g' $dir

dir=$solid_GTK_DIR/gtk-2.0/gtkrc
sed -i 's/gtk-color-scheme = "foreground:.*/gtk-color-scheme = "foreground:#'$text'"/g' $dir
sed -i 's/gtk-color-scheme = "background:.*/gtk-color-scheme = "background:#'$layer0'"/g' $dir
sed -i 's/gtk-color-scheme = "background_alt:.*/gtk-color-scheme = "background_alt:#'$layer1'"/g' $dir
sed -i 's/gtk-color-scheme = "accent:.*/gtk-color-scheme = "accent:#'$accent'"/g' $dir



## --- SDDM ---
sddm_dir=/usr/share/sddm/themes/boo
dir=$sddm_dir/theme.conf

sudo cp ./colors/$1/$sddm_image $sddm_dir/backgrounds/
sudo sed -i 's/Background=.*/Background="backgrounds\/'$sddm_image'"/g' $dir
sudo find $dir -type f -exec sed -i 's/$TEXT/"#'$text'"/g' {} \;
sudo find $dir -type f -exec sed -i 's/$ACCENT/"#'$accent'"/g' {} \;
sudo find $dir -type f -exec sed -i 's/$RED/"#'$red'"/g' {} \;
sudo find $dir -type f -exec sed -i 's/$GREEN/"#'$green'"/g' {} \;
sudo find $dir -type f -exec sed -i 's/$YELLOW/"#'$yellow'"/g' {} \;
sudo find $dir -type f -exec sed -i 's/$BLUE/"#'$blue'"/g' {} \;
sudo find $dir -type f -exec sed -i 's/$LAYER0/"#'$layer0'"/g' {} \;
sudo find $dir -type f -exec sed -i 's/$LAYER1/"#'$layer1'"/g' {} \;
sudo find $dir -type f -exec sed -i 's/$LAYER2/"#'$layer2'"/g' {} \;


## --- SWAYLOCK ---
dir=~/.config/swaylock/config

find $dir -type f -exec sed -i 's/$TEXT/'$text'ff/g' {} \;
find $dir -type f -exec sed -i 's/$ACCENT/'$accent'ff/g' {} \;
find $dir -type f -exec sed -i 's/$RED/'$red'ff/g' {} \;
find $dir -type f -exec sed -i 's/$GREEN/'$green'ff/g' {} \;
find $dir -type f -exec sed -i 's/$YELLOW/'$yellow'ff/g' {} \;
find $dir -type f -exec sed -i 's/$BLUE/'$blue'ff/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER0/'$layer0'ff/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER1/'$layer1'ff/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER2/'$layer2'ff/g' {} \;


## --- Wob ---
dir=~/.config/wob/wob.ini

find $dir -type f -exec sed -i 's/$TEXT/'$text'/g' {} \;
find $dir -type f -exec sed -i 's/$ACCENT/'$accent'/g' {} \;
find $dir -type f -exec sed -i 's/$RED/'$red'/g' {} \;
find $dir -type f -exec sed -i 's/$GREEN/'$green'/g' {} \;
find $dir -type f -exec sed -i 's/$YELLOW/'$yellow'/g' {} \;
find $dir -type f -exec sed -i 's/$BLUE/'$blue'/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER0/'$layer0'/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER1/'$layer1'/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER2/'$layer2'/g' {} \;


## --- Waybar ---
dir=~/.config/waybar/colors.css

find $dir -type f -exec sed -i 's/$TEXT/#'$text';/g' {} \;
find $dir -type f -exec sed -i 's/$ACCENT/#'$accent';/g' {} \;
find $dir -type f -exec sed -i 's/$RED/#'$red';/g' {} \;
find $dir -type f -exec sed -i 's/$GREEN/#'$green';/g' {} \;
find $dir -type f -exec sed -i 's/$YELLOW/#'$yellow';/g' {} \;
find $dir -type f -exec sed -i 's/$BLUE/#'$blue';/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER0/#'$layer0';/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER1/#'$layer1';/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER2/#'$layer2';/g' {} \;



## --- SwayNC ---
dir=~/.config/swaync/colors.css

find $dir -type f -exec sed -i 's/$TEXT/#'$text';/g' {} \;
find $dir -type f -exec sed -i 's/$ACCENT/#'$accent';/g' {} \;
find $dir -type f -exec sed -i 's/$RED/#'$red';/g' {} \;
find $dir -type f -exec sed -i 's/$GREEN/#'$green';/g' {} \;
find $dir -type f -exec sed -i 's/$YELLOW/#'$yellow';/g' {} \;
find $dir -type f -exec sed -i 's/$BLUE/#'$blue';/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER0/#'$layer0';/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER1/#'$layer1';/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER2/#'$layer2';/g' {} \;


## --- Tofi ---
dir=~/.config/tofi/config

find $dir -type f -exec sed -i 's/$TEXT/#'$text'/g' {} \;
find $dir -type f -exec sed -i 's/$ACCENT/#'$accent'/g' {} \;
find $dir -type f -exec sed -i 's/$RED/#'$red'/g' {} \;
find $dir -type f -exec sed -i 's/$GREEN/#'$green'/g' {} \;
find $dir -type f -exec sed -i 's/$YELLOW/#'$yellow'/g' {} \;
find $dir -type f -exec sed -i 's/$BLUE/#'$blue'/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER0/#'$layer0'/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER1/#'$layer1'/g' {} \;
find $dir -type f -exec sed -i 's/$LAYER2/#'$layer2'/g' {} \;


# -- logout #
sudo systemctl restart sddm.service