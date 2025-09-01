#!/bin/bash

player="$(playerctl -l)"

if [ $player !="No players found" ]; then
    playerctl play-pause
fi