# /usr/bin/env bash

# scrot
# imagemagick

# set the overlay image and a temporary location for the screenshot
overlay_img="$HOME/pictures/overlay-lockscreen"
tmp='/tmp/screen.png'

# take a screenshot
scrot "$tmp"

# blur the screenshot by resizing and scaling back up
convert "$tmp" -filter Gaussian -thumbnail 20% -sample 500% "$tmp"

# overlay the image onto the screenshot
convert "$tmp" "$overlay_img" -gravity center -composite "$tmp"

# lock the screen with the blurred screenshot
i3lock -n -e -i "$tmp"
