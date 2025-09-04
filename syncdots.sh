#!/bin/bash

cd ~/dotfiles/
git pull

cp -r ~/.config/hypr ./.config/
cp -r ~/.config/waybar ./.config/
cp -r ~/.config/fastfetch ./.config/
cp -r ~/.config/kitty ./.config/

cp ~/.bashrc ./.bashrc

git add .
git commit -m "Automatic sync with shell script at `date +'%m-%d %H:%M'`"
git push
