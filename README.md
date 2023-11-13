# Hyprland Dots V1
Im tired of not being able to use whatever colors I want for all my programs! Down with having tons of diffrent config files to edit! My dots use bash scripts for easy switching of colors and layouts (and soon will use [flavours](https://github.com/misterio77/flavours) so you only need a base16 theme)

## Screenshots
### outline

### sharp

### neon

### minimal


## Minimal bloat
I tried to exclude as many programs as I could that arent core to making things look nice. Most applications are also easy to uninstall/replace

### Programs
<details open> 
  <summary><h4>Applications</h4></summary>
  
  |- Use -|- Program -|
  |:-|:-|
  |**Booting** | playmouth and sddm |
  |**Term** | kitty |
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
  |**Eyedropper**|hyprpicker|
  |**Screenshot**|grim/slurp|
</details>

<details open> 
  <summary><h4>Fonts</h4></summary>
  
  * jetbrainsmono nerd font
  * firacode nerd font
  * gohufont nerd
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
  * breezex-cursor-theme
</details>

## Easy layout and colors -land
I tried to make it as simple as possible to define `layouts` and `colors`. Swapping color scemes or layout is as easy as running the `swapper.sh` script!

## Todo
- [ ] replace color change script with [flavours](https://github.com/misterio77/flavours)

#### V2
- [ ] give the repo a cool name
- [ ] Swap swaync/wob/etc with eww or ags
- [ ] make fire/waterfox theme + startpage
- [ ] add Sharp-GTK variants

#### V3
- [ ] simple GUI for changing colors/layout script
- [ ] cleanup scripts
- [ ] install script

### Bloat relese
- A seperate repo with tons of everyday applications like a DE, Might learn NIX for this

# Credits
**Sharp-GTK:** [(made by)](https://github.com/myagko) the gtk theme that saved me from needing to make my own, however the repo no longer exists :( | [**Simple Fox:**](https://github.com/migueravila/SimpleFox) slightly modified for my waterfox theme | [**Zabooby
 MPV:**](https://github.com/Zabooby/mpv-config) this amazing MPV config I stole | [**Boo SDDM:**](https://github.com/PROxZIMA/boo-sddm) for the sddm theme
