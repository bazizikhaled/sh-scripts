#!/bin/sh

file_list="/home/kh/.config/data/file.txt"
paths=$(cat "$file_list")

selected_file=$(echo "$paths" | dmenu -l 10 -p "Select a file:")

if [ -n "$selected_file" ]; then
    st -e nano $selected_file
fi
