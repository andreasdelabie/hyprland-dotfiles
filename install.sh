echo """\
-------------------------
ANDREAS' WAYLAND DOTFILES
-------------------------
"""

sleep 2s

echo "[INSTALLING PACKAGES...]"
sudo pacman -S ly hyprland waybar wofi pulseaudio gnome-terminal otf-font-awesome

echo "[COPYING DOT FILES...]"
mkdir -p /home/$USER/.config/
cp -r ./.config/hypr /home/$USER/.config/
cp -r ./.config/wofi /home/$USER/.config/
cp -r ./.config/waybar /home/$USER/.config/

echo "[COPYING BACKGROUNDS...]"
sudo mkdir -p /usr/share/backgrounds/
sudo cp -r ./usr/share/backgrounds /usr/share/

echo "[FINISHING INSTALL...]"
sudo systemctl enable ly.service
pulseaudio -D
/usr/share/backgrounds/load-background.sh

echo "[FINISHED INSTALLING!]"
