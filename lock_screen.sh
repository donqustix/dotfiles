#!/bin/bash

img="$HOME/.cache/i3lock.png"

# make a screenshot
scrot -o $img

# pixelate it
convert -scale 25% -scale 400% $img $img

# lock the screen
i3lock -u -i $img
