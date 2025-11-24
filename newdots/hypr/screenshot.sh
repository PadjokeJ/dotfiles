#!/bin/bash

shotter="$(hyprctl layers | grep hyprpicker)"
echo $shotter
if [ "$shotter" = "" ]; then
  hyprshot -z -m region
fi
