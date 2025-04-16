#!/usr/bin/env bash

# Directory for wallpapers
WALLPAPER_DIR="$HOME/.config/theme-switcher/wallpapers"
POLYBAR_DIR="$HOME/.config/polybar"

# Rofi menu to select color option
CHOICE=$(echo -e "Lavanda Blue\nMonokai Yellow" | rofi \
    -dmenu \
    -i \
    -p "Select Color Scheme")

# Define color codes based on choice
case "$CHOICE" in
    "Lavanda Blue")
        POLYBAR_THEME="quixotic"
        NEW_COLOR="3584e4"
        GTK_THEME="Lavanda-Sea-Dark"
        NVIM_THEME="blue"
        WALLPAPER="$WALLPAPER_DIR/quixotic.jpeg"
        ;;
    "Monokai Yellow")
        POLYBAR_THEME="monokai-lite"
        NEW_COLOR="F0C674"
        GTK_THEME="Monokai-Pro"
        NVIM_THEME="Monokai-Pro"
        WALLPAPER="$WALLPAPER_DIR/monokai-lite.jpeg"       
        ;;
    *)
        echo "Invalid selection."
        exit 1
        ;;
esac

# Paths to config files
I3_CONFIG="$HOME/.config/i3/config.ini"
#POLYBAR_CONFIG="$HOME/.config/polybar/config.ini"
#DUNST_CONFIG="$HOME/.config/dunst/dunstrc"
#GTK_SETTINGS="$HOME/.config/gtk-3.0/settings.ini"
#NVIM_CONFIG="$HOME/.config/nvim/lua/core/plugin_config/monokai.lua"
#WALLPAPER_FILE="$WALLPAPER_DIR/$NEW_COLOR.jpeg"

# Function to replace color in file
replace_color() {
    local file="$1"
    local old_color="$2"
    local new_color="$3"
    sed -i "s/$old_color/$new_color/g" "$file"
}

# Update i3 config
#replace_color "$I3_CONFIG" "set \$main [A-Fa-f0-9]\{6\}" "set \$main $NEW_COLOR"

# Update Polybar config
#replace_color "$POLYBAR_CONFIG" "main = #[A-Fa-f0-9]\{6\}" "main = #$NEW_COLOR"
# Update the [colors] section in config.ini to use the selected theme
#:while [[ : ]]; do
  
#done
sed -i "
    s/^background\s*=\s*.*/background = \${$POLYBAR_THEME.background}/
    s/^background-alt\s*=\s*.*/background-alt = \${$POLYBAR_THEME.background-alt}/
    s/^foreground\s*=\s*.*/foreground = \${$POLYBAR_THEME.foreground}/
    s/^alert\s*=\s*.*/alert = \${$POLYBAR_THEME.alert}/
    s/^disabled\s*=\s*.*/disabled = \${$POLYBAR_THEME.disabled}/
    s/^transparent\s*=\s*.*/transparent = \${$POLYBAR_THEME.transparent}/
" "$POLYBAR_DIR/config.ini"
# Update the theme variable in config.ini
#sed -i "s/^theme\s*=\s*.*/theme = $POLYBAR_THEME/" "$POLYBAR_DIR/config.ini"



# Update Dunst config
#replace_color "$DUNST_CONFIG" "frame_color = \"#[A-Fa-f0-9]\{6\}\"" "frame_color = \"#$NEW_COLOR\""

# Update GTK settings
#sed -i "s/gtk-theme-name=.*/gtk-theme-name=$GTK_THEME/" "$GTK_SETTINGS"
#sed -i "s/gtk-icon-theme-name=.*/gtk-icon-theme-name=$GTK_THEME/" "$GTK_SETTINGS"

# Update Neovim colorscheme
#sed -i "s/colorscheme .*/colorscheme $NVIM_THEME/" "$NVIM_CONFIG"

# Set wallpaper using feh
#feh --bg-fill "$WALLPAPER_FILE"
# Set wallpaper using feh
if [[ -f "$WALLPAPER" ]]; then
    feh --bg-fill "$WALLPAPER"
else
    echo "Wallpaper not found: $WALLPAPER"
fi
# Restart services
#i3-msg restart
#pkill dunst
#dunst &
#pkill polybar
#polybar &
# Kill all Polybar instances

i3-msg reload

# Notify user

notify-send "Theme Changed To $CHOICE"
