#!/bin/bash

threshhold_green=0
threshhold_yellow=10
threshhold_red=30


if ! updates_arch=$(checkupdates | wc -l); then
    updates_arch=0
fi
if ! updates_aur=$(trizen -Su --aur --quiet | wc -l); then
    updates_aur=0
fi


updates=$(("$updates_arch" + "$updates_aur"))
# For testing:
# updates=5


css_class="green"


if [ "$updates" -gt $threshhold_yellow ]; then
    css_class="yellow"
fi

if [ "$updates" -gt $threshhold_red ]; then
    css_class="red"
fi

if [ "$updates" -gt $threshhold_green ]; then
    printf '{"text": "%s", "alt": "%s", "tooltip": "%s updates", "class": "%s"}' "$updates" "$updates" "$updates" "$css_class"
else
    printf '{"text": "0", "alt": "0", "tooltip": "0 updates", "class": "green"}'
fi
