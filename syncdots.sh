#!/bin/bash

cd ~/dotfiles/
git pull

echo $"syncing $1"

cp -rv ~/.config/hypr ./$1/
cp -rv ~/.config/waybar ./$1/
cp -rv ~/.config/fastfetch ./$1/
cp -rv ~/.config/kitty ./$1/
cp -rv ~/.config/quickshell ./$1/
cp -rv ~/.config/wofi ./$1/
cp -rv  ~/.config/dunst/ ./$1/

cp -v  ~/.config/kdeglobals ./$1/kdeglobals
cp -v  ~/.bashrc ./$1/.bashrc
cp -v ~/wofi.sh ./$1/wofi.sh
cp -v ~/fvim.sh ./$1/fvim.sh

git add .
git commit -m "Automatic sync with shell script at `date +'%m-%d %H:%M'`"
git push
