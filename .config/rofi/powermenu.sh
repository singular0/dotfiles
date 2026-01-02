#!/bin/bash

options=(
  "Exit"
  "Reboot"
  "Shutdown"
)

choice=$(printf "%s\\n" "${options[@]}" | \
  rofi -dmenu -i -theme-str "inputbar { enabled: false; }")

case "$choice" in
    Exit) i3-msg exit ;;
    Reboot) systemctl reboot ;;
    Shutdown) systemctl poweroff ;;
esac
