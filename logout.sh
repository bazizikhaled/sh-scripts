#!/bin/bash

options="Shutdown\nReboot\nExit Session"

choice=$(echo -e $options | dmenu -i -p "Select an option:")

case $choice in
    "Shutdown")
        loginctl poweroff
        ;;
    "Reboot")
        loginctl reboot
        ;;
    "Exit Session")
        loginctl terminate-session $XDG_SESSION_ID
        ;;
    *)
        echo "Invalid option"
        ;;
esac
