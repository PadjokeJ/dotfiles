#!/bin/bash

player="$(playerctl -lias kdeconnect)"
if [ "$player" != "" ]; then
	(playerctl -a play-pause)
fi
