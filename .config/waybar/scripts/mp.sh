#!/bin/bash

status="$(playerctl -lasi kdeconnect)"

if [ "$status" = ""  ]; then
    printf '{"text": "No music is playing", "alt": "none", "class": "mp", "percentage": 0, "title": ""}\n'
    exit
fi

if [ "$status" = "" ]; then
title="$(playerctl metadata title)"
trunc_title=${title:10}
artist="$(playerctl metadata artist)"
status="$(playerctl status)"

pos="$(playerctl metadata --format '{{position}}')"
p=$(($pos / 1000000))
p_min=$(($p / 60))
p_sec=$(($p % 60))
pos="$p_min:$p_sec"

time="$(playerctl metadata --format '{{mpris:length}}')"
t=$(($time / 1000000))
t_min=$(($t / 60))
t_sec=$(($t % 60))
time="$t_min:$t_sec"

played=""
unplayed=""

p_bar=$(($p * 15 / $t))
bar=""
for i in $(seq 1 $p_bar);
do
    bar="$bar $played"
done
for i in $(seq 1 $((15 - $p_bar)));
do
    bar="$bar $unplayed"
done

text="<b>$title</b>  <i>$artist</i>"

if [ "$status" = "Paused" ]; then
    alt="paused"
else 
    alt="playing"
fi

printf '{"text": "%s\r%s %s  %s", "alt": "%s", "txt": "%s", "class": "mp", "percentage": 0}\n', "$text" "$pos" "$bar" "$time" "$alt" "$trunc_title"
