#!/bin/sh

# Path to the bookmarks file
BOOKMARKS_FILE="/home/kh/.config/data/bookmarks"

# Read the bookmarks from the file
bookmarks=$(cat "$BOOKMARKS_FILE")

# Prompt the user to select a bookmark or Google search
selected=$(echo -e "$bookmarks" | dmenu -l 10)

floorp "$selected"
