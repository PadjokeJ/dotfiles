#!/bin/bash

cd ~/dotfiles/

echo 'moving directories...'
cp -rv ./tva/* ~/.config/

echo 'moving minutes script...'
cp -v  ./tva/minutes.sh ~

echo 'moving bashrc...'
cp -v  ./tva/.bashrc ~

echo 'done!'
