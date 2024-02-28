#!/bin/bash

query=$(echo "" | dmenu -p "Search youtube:")

option=$(echo -e "Audio\nVideo" | dmenu -p "Select option:")

case $option in
    "Audio")
	st -e  ytfzf -m "$query"
        ;;
    "Video")
        st -e  ytfzf -ft "$query"
        ;;
    *)
        echo "Invalid option"
        ;;
esac
