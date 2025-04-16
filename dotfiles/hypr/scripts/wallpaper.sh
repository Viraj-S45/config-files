#!/usr/bin/env bash

# Set fixed wallpaper directory
WALLPAPER_DIR="/home/virajs/Nextcloud/Pictures/Wallpapers/hyperland"
STATE_FILE="$HOME/.cache/hyprpaper_wall_index"
CONFIG_FILE="/tmp/hyprpaper_temp.conf"

# Start swww if not running
pgrep -x swww-daemon > /dev/null || swww init

# Collect wallpapers
mapfile -t wallpapers < <(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \) | sort)

if [ ${#wallpapers[@]} -eq 0 ]; then
    echo "❌ No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

# Get current index
if [ -f "$STATE_FILE" ]; then
    index=$(<"$STATE_FILE")
else
    index=0
fi

# Wrap around
index=$((index % ${#wallpapers[@]}))
wallpaper="${wallpapers[$index]}"

# Get monitor names using Hyprland
monitors=$(hyprctl monitors | grep 'Monitor' | awk '{print $2}')

# Create temporary config file for hyprpaper
echo "[wallpapers]" > "$CONFIG_FILE"
for mon in $monitors; do
    echo "$mon=$wallpaper" >> "$CONFIG_FILE"
done

# Kill any running hyprpaper instances
pkill -x hyprpaper

# Start hyprpaper with the new config
hyprpaper -c "$CONFIG_FILE" &

# Apply transition with swww
# swww img "$wallpaper" --transition-type grow --transition-duration 1
swww img "$wallpaper" --transition-type grow --transition-fps 120 --transition-duration 1

# Save next index
echo $(( (index + 1) % ${#wallpapers[@]} )) > "$STATE_FILE"
