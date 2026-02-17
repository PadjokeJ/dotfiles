#!/bin/bash

file="$(fzf)"

if [ "$file" = "" ]; then
  exit
fi

vim $file
