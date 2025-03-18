WALLPAPER_DIR="usr/share/backgrounds/"
CURRENT_WALLPAPER=$(hyprctl hyprpaper listloaded)

WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALLPAPER")" | shuf -n 1)

hyprctl hyprpaper reload ,"$WALLPAPER"
