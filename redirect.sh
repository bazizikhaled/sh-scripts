#!/bin/bash

youtube_link=$(xclip -o)

invidious_link=$(echo $youtube_link | sed 's/www.youtube.com/invidious.projectsegfau.lt/g')

xdg-open $invidious_link
