#!/bin/bash

handle() {
    case $1 in
        activewindow*)
            class=$(echo "$1" | cut -d',' -f1 | cut -d'>' -f3)
            
            # Большие окна - расширяем
            if [[ "$class" =~ ^(chromium|firefox|code|obsidian|Spotify)$ ]]; then
                hyprctl dispatch exec "waybarctl set-class expanded"
            # Терминалы и маленькие окна - компактный
            elif [[ "$class" =~ ^(Alacritty|kitty|ghostty)$ ]]; then
                hyprctl dispatch exec "waybarctl set-class compact"
            # Пустой воркспейс - минимальный
            elif [[ -z "$class" ]]; then
                hyprctl dispatch exec "waybarctl set-class minimal"
            fi
            ;;
    esac
}

socat -U - UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do
    handle "$line"
done
```

И запусти его в `hyprland.conf`:
```
exec-once = ~/.config/waybar/scripts/adaptive-width.sh