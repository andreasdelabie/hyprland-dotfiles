WALLPAPER_DIR="/usr/share/backgrounds/"
CURRENT_WALLPAPER=$(hyprctl hyprpaper listloaded)

WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALLPAPER")" | shuf -n 1)

systemctl --user enable --now hyprpaper.service
sleep 0.5s
hyprctl hyprpaper reload ,"$WALLPAPER"
wal -i "$WALLPAPER"
hyprctl reload
killall waybar && waybar
