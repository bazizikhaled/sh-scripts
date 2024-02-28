#!/bin/bash

#query=$(echo "" | dmenu -p "name:")
#maim -s ~/dev/note/$query.png

maim -s | xclip -selection clipboard -t image/png
