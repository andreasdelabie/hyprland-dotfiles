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
cp -r ./.config/hypr/ /home/$USER/.config/
cp -r ./.config/wofi /home/$USER/.config/
cp -r ./.config/waybar /home/$USER/.config/

echo "[FINISHING INSTALL...]"
sudo systemctl enable ly.service
pulseaudio -D

echo "[FINISHED INSTALLING!]
