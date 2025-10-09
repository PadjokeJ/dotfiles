#!/bin/bash

cd ~/dotfiles/

echo 'moving directories...'
cp -r ./tva/* ~/.config/

echo 'moving minutes script...'
cp ./tva/minutes.sh ~

echo 'moving bashrc...'
cp ./tva/.bashrc ~

echo 'done!'
