#!/bin/bash

audio_dir="/home/kh/.config/lib/qu"

audio_files=($(ls $audio_dir))

selected_file=$(printf "%s\n" "${audio_files[@]}" | dmenu -l 10)

if [ -n "$selected_file" ]; then
   st -e mpv "$audio_dir/$selected_file"
fi
