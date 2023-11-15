# Hyprland Dots V1
Im tired of not being able to use whatever colors I want for all my programs! Down with having tons of diffrent config files to edit! My dots use bash scripts for easy switching of colors and layouts separately
> [!NOTE]  
> This has been my very first time both using arch and scripting ANYTHING, so my scripts are very very very messy! However I found a cool tool called [flavours](https://github.com/misterio77/flavours) and will be replacing my color scripts with that. This will also include theming for neovim and kitty

## Screenshots
### outline

### sharp

### neon

### minimal


## Experiance
I use this setup on both my laptop and my desktop and try to keep it as minimal as possible. However you can add your own program configs in .config/hypr/theme/layouts and change the script (will make it easier in the future I promise)

### Programs
<details open> 
  <summary><h4>Applications</h4></summary>
  
  |- Use -|- Program -|
  |:-|:-|
  |**Booting** | playmouth and sddm |
  |**Term** | kitty |
  |**Fetch** | pfetch |
  |**File Manager** | lf |
  |**Text Editor** | neovim with nvchad |
  |**Image Viewer** | qimgv |
  |**Video Player** | mpv |
  |**Music Player** | cue |
</details>

<details open> 
  <summary><h4>Widgets</h4></summary>
  
  |- Use -|- Program -|
  |:-|:-|
  |**Bar** |waybar|
  |**Menu** |tofi|
  |**Notifs** |sway-nc|
  |**Lock** |swaylock-effects|
  |**OSD** |wob|
  |**Wallpaper** |swww|
  |**Icons** |papirus|
  |**GTK** |sharp-gtk|
  |**Cursors** |breezex|
  |**Eyedropper**|hyprpicker|
  |**Screenshot**|grim/slurp|
</details>

<details open> 
  <summary><h4>Fonts</h4></summary>
  
  * jetbrains nerd font
  * firacode nerd font
  * bigblueterm437 nerd font
  * hermit nerd font
</details>

<details> 
  <summary><h4>System Stuff</h4></summary>
  
  * pipewire
  * pavucontrol
  * xdg-desktop-portal
  * xdg-user-dirs
  * qt5-wayland
  * qt6-wayland
  * bluez
  * qt5-styleplugins 
  * gtk-engine-murrine
  * playerctl
  * brightnessctl
  * polkit-kde-agent
  * blueman
  * tlp
  * swayidle
</details>

## Easy layout and colors -land
> [!NOTE]  
> Color script will be replaced with [flavours](https://github.com/misterio77/flavours) and include kitty and neovim
> 
I tried to make it as simple as possible to define `layouts` and `colors`. Swapping color scemes or layout is as easy as running the `swapper.sh` script

## Todo
- [ ] replace color change script with [flavours](https://github.com/misterio77/flavours)
- [ ] rework layout script

#### V2
- [ ] give the repo a cool name
- [ ] Swap swaync/wob/etc with eww or ags
- [ ] make fire/waterfox theme + startpage
- [ ] add Sharp-GTK variants

#### V3
- [ ] simple GUI for changing colors/layout script
- [ ] cleanup scripts
- [ ] install script

### NixOS
- [ ] if people like this repo I'll make a NixOS version that has all my fav programs included

# Credits
**Sharp-GTK:** [(made by)](https://github.com/myagko) the gtk theme that saved me from needing to make my own | [**Simple Fox:**](https://github.com/migueravila/SimpleFox) slightly modified for my waterfox theme | [**Zabooby
 MPV:**](https://github.com/Zabooby/mpv-config) this amazing MPV config I stole | [**Boo SDDM:**](https://github.com/PROxZIMA/boo-sddm) for the sddm theme
