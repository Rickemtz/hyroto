#!/bin/bash

# Íconos usando códigos Unicode escapados (evita corrupción al copiar)
declare -A icons=(
    ["kitty"]=$'\ue712'        # 
    ["floorp"]=$'\ue745'       # 
    ["firefox"]=$'\ue745'      # 
    ["discord"]=$'\uf1ff' # 
    ["Spotify"]=$'\uf1bc'      # 
    ["org.kde.dolphin"]=$'\uf4d3'      # 
    ["code-oss"]=$'\ue70c'   # 
    ["obsidian"]=$'\udb80\udda1' # 
    ["thunderbird"]=$'\uf6ed'  # 
    ["steam"]=$'\uf1b6'        # 
    ["org.telegram.desktop"]=$'\uf2c6'     # 
    ["default"]=$'\uf111'      # 
)

get_workspaces() {
    workspaces=$(hyprctl workspaces -j | jq -r '.[] | .id' | sort -n)
    active_workspace=$(hyprctl monitors -j | jq -r '.[0].activeWorkspace.id')

    output=""
    for ws in $workspaces; do
        classes=$(hyprctl clients -j | jq -r ".[] | select(.workspace.id == $ws) | .class" | sort -u)

        if [ -n "$classes" ]; then
            class=$(echo "$classes" | head -n1)
            icon=${icons[$class]:-${icons["default"]}}
        else
            icon="${icons["default"]}"
        fi

        if [ "$ws" == "$active_workspace" ]; then
            output="$output<span color='#89b4fa'> $icon </span>"
        else
            output="$output<span color='#6c7086'> $icon </span>"
        fi
    done
    echo "${output}"
}

get_workspaces

socat -u "UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" - | \
while read -r line; do
    case "$line" in
        workspace*|activewindow*|openwindow*|closewindow*|movewindow*)
            get_workspaces
            ;;
    esac
done
