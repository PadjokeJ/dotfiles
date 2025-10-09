#!/bin/bash

cd ~/dotfiles/
git pull

echo 'moving directories'
cp -r ./miata/* ~/.config/

echo 'moving bashrc'
cp ./miata/.bashrc ~

echo 'done'
