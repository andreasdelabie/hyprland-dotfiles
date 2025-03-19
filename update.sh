# ------------------------------
#              COPY
# ------------------------------
mkdir -p ./.config/
cp -ru /home/andreas/.config/hypr ./.config/
cp -ru /home/andreas/.config/wofi ./.config/
cp -ru /home/andreas/.config/waybar ./.config/

mkdir -p ./usr/share/
cp -ru /usr/share/backgrounds ./usr/share/


# ------------------------------
#         PUSH TO GITHUB
# ------------------------------
git diff
read -p "Enter commit message: " message
git add -A
git commit -m "$message"
git push
