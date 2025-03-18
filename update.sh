mkdir -p ./.config/
cp -r /home/andreas/.config/hypr/ ./.config/
cp -r /home/andreas/.config/wofi/ ./.config/
cp -r /home/andreas/.config/waybar/ ./.config/

read -p "Enter commit message: " message
git add -A
git commit -m "$message"
