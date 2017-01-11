#!/bin/bash
scrot /tmp/screen.png
sudo convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $1 ]] && sudo convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
sudo i3lock -u -i /tmp/screen.png
