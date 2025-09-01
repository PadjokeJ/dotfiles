#!/bin/bash

status="$(playerctl -l)"

if [ $status ="No players found" ]; then
    printf '{"text": "No music is playing", "alt": "none", "class": "mp", "percentage": 0}\n'
    exit
fi
title="$(playerctl metadata title)"
artist="$(playerctl metadata artist)"
status="$(playerctl status)"

text="<b>$title</b>  <i>$artist</i>"

if [ $status ="Paused" ]; then
    alt="paused"
else 
    alt="playing"
fi

printf '{"text": "%s", "alt": "%s", "class": "mp", "percentage": 0}\n', "$text" "$alt"