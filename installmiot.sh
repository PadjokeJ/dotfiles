#!/bin/bash

cd ~/dotfiles/
git pull

echo 'moving directories'
cp -r ./miata/* ~/test.d/

echo 'moving bashrc'
cp ./miata/.bashrc ~

echo 'done'
