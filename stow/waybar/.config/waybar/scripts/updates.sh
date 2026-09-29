checkupdates > ~/.config/waybar/updates.txt
echo "{\"text\": \"""$(cat ~/.config/waybar/updates.txt | wc -l)""\", \"alt\": \""$(cat ~/.config/waybar/updates.txt | awk '{print $1}')"\"}"

