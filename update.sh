mkdir -p ./.config/
cp -ru /home/andreas/.config/hypr ./.config/
cp -ru /home/andreas/.config/wofi ./.config/
cp -ru /home/andreas/.config/waybar ./.config/

mkdir -p ./usr/share/backgrounds
cp -ru /usr/share/backgrounds ./usr/share/

git add -A
read -p "Enter commit message: " message
git commit -m "$message"
git push
