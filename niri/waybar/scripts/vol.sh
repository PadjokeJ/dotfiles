#!/bin/bash

pavu="$(pgrep pavucontrol)"

if [ "$pavu" = "" ]; then
	pavucontrol
	exit
fi

killall pavucontrol
