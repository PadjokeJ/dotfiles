#!/bin/bash

cd ~/dotfiles/
git pull

cp -r ~/.config/hypr ./.config/hypr
cp -r ~/.config/waybar ./.config/waybar
cp -r ~/.config/fastfetch ./.config/fastfetch

git add .
git commit -m "Automatic sync with shell script"
git push
