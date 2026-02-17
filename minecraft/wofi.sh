wofi="$(pgrep wofi)"

if [ "$wofi" = "" ]; then
  wofi -S drun -in -W 480 -H 240
fi

