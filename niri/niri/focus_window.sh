#!/bin/bash

app="$(pgrep -i $1)"

echo $app

if [ "$app" = "" ]; then
	echo "launching $1"
	$1
	exit
fi

niri msg action focus-window --id $(niri msg windows | grep "App ID:" -B 3 | grep "$1" -B 3 | grep "Window ID" | awk '{print $3}' | sed 's/://')

