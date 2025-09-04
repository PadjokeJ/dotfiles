#!/bin/bash

player="$(playerctl -li kdeconnect)"
if [ "$player" != "" ]; then
	(playerctl -a play-pause)
fi
