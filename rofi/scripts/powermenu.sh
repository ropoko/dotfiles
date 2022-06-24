#!/bin/env bash

# menu options
lock=""
shutdown=""
reboot=""

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
    $HOME/.config/i3lock/blur.sh
elif [ "$selected_option" == "$shutdown" ]
then
    poweroff
elif [ "$selected_option" == "$reboot" ]
then
    reboot
else
    echo "No match"
fi
