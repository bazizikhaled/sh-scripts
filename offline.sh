#!/bin/bash

sites=$(ls /home/kh/.config/httrack)

selected_site=$(echo "$sites" | dmenu -l 10 -p "Select a site:")

if [ -n "$selected_site" ]; then
    xdg-open "/home/kh/.config/httrack/$selected_site/index.html"
fi
