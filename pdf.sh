#!/bin/bash

pdf_dir="/home/kh/.config/lib/book"

selected_file=$(ls $pdf_dir | dmenu -l 10)

if [ -n "$selected_file" ]; then
    zathura "$pdf_dir/$selected_file"
fi
