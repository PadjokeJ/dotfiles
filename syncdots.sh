#!/bin/bash

cd ~/dotfiles/
git pull

cp -r ~/.config/hypr ./$1/
cp -r ~/.config/waybar ./$1/
cp -r ~/.config/fastfetch ./$1/
cp -r ~/.config/kitty ./$1/
cp -r ~/.config/quickshell ./$1

cp ~/.bashrc ./$1/.bashrc

git add .
git commit -m "Automatic sync with shell script at `date +'%m-%d %H:%M'`"
git push
