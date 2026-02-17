#!/bin/bash

state=`nmcli -f IN-USE,SIGNAL device wifi | grep "*" | awk '{print $2}'`

div=20
state=$((state / div))

d=`echo ~`

echo -e "#network {\n  background-image: url(\""$d"/.config/waybar/images/ping"$state".png\");\n}" > ~/.config/waybar/ping.css

