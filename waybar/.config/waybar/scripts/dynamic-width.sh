#!/bin/bash
# ~/.config/waybar/scripts/dynamic-width.sh

socat -u UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r line; do
    if [[ $line == "activewindow>>"* ]]; then
        window_class=$(echo $line | cut -d'>' -f3 | cut -d',' -f1)
        
        # Список классов для полной ширины
        if [[ "$window_class" =~ (chromium|firefox|code|obsidian) ]]; then
            pkill -RTMIN+9 waybar
        fi
    fi
done