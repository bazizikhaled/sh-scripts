#!/bin/sh

BOOKMARKS_FILE="/home/kh/.config/data/bookmarks"

bookmarks=$(cat "$BOOKMARKS_FILE")

bookmarks_with_google="Google\nYoutube\n$bookmarks"

selected=$(echo -e "$bookmarks_with_google" | dmenu -l 10)


case $selected in
    "Google")
    query=$(echo "" | dmenu -p "Search Google:")
    floorp "https://www.google.com/search?q=$query"        
	;;
    "Youtube")
    query=$(echo "" | dmenu -p "Search youtube:")
    floorp "https://www.youtube.com/results?search_query=$query"
        ;;
    *)
    floorp "$selected"
        ;;
esac
