#!/usr/bin/env bash

wofi="$(pgrep wofi)"

if [ "$wofi" != "" ]; then
  exit
fi

op=$(echo -e "  POWEROFF\n  REBOOT\n SUSPEND\n  LOCK\n  LOGOUT" | wofi -n -i -S dmenu --width 300 --height 200 | awk '{print tolower($2)}')


case "$op" in
  poweroff | reboot | suspend)
    systemctl "$op"
    ;;
  lock)
    hyprlock
    ;;
  logout)
    hyprctl dispatch exit
    ;;
  *)
    exit 0
    ;;
esac
