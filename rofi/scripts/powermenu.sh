#!/bin/env bash

# menu options
lock="🔒"
shutdown="⏻"
reboot="↺"

# Get answer via rofi
selected_option=$(echo "$lock
$reboot
$shutdown" | rofi -dmenu\
                  -i\
                  -p "Power"\
		  -theme "~/.config/rofi/scripts/powermenu.rasi")
# Do something based on selected option
if [ "$selected_option" == "$lock" ]
then
    betterlockscreen --lock
elif [ "$selected_option" == "$shutdown" ]
then
    mpv ~/Music/alaram/shutdown.mp3 &
    doas systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    reboot
else
    echo "No match"
fi
