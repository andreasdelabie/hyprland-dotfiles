echo """\
-------------------------
ANDREAS' WAYLAND DOTFILES
-------------------------
"""

sleep 2s

echo "[INSTALLING PACKAGES...]"
sudo pacman -S ly hyprland waybar wofi gnome-terminal otf-font-awesome

echo "[COPYING DOT FILES...]"
mkdir -p $HOME/.config/
cp -r ./.config/hypr $HOME/.config/
cp -r ./.config/wofi $HOME/.config/
cp -r ./.config/waybar $HOME/.config/

echo "[COPYING BACKGROUNDS...]"
sudo mkdir -p /usr/share/
sudo cp -r ./usr/share/backgrounds /usr/share/

echo "[FINISHING INSTALL...]"
sudo systemctl enable ly.service
$HOME/.config/hypr/scripts/load-background.sh

echo "[FINISHED INSTALLING!]"
