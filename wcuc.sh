#!/bin/sh


readarray -t list_connections <<< $(nmcli connection show | awk -F '  ' '{print $1}')

name=$(nmcli dev wifi list | sed -n '1!p' | cut -b 9- | dmenu -p "Select wifi: " -l 20 | cut -d'I' -f1)



bool=0

for item in "${list_connections[@]}"; do
    echo "$item"
    echo "$bool"
    if [ "$item" = "$(echo $name | awk '{$1=""; print $0}')" ]; then
        bool=1
    fi
done

#for item in "${list_connections[@]}"; do
#    if [$item -eq $(echo $name | awk '{$1=""; print $0}')]; then
#        bool = 1
#    fi
#done

#echo $bool

#if ["$bool"]; then
#    nmcli dev wifi connect $(echo "$name" | cut -d'  ' -f1)
#else
#    pass=$(echo "" | dmenu -p "Enter password:")
#    nmcli dev wifi connect $(echo "$name" | cut -d'  ' -f1)  password $pass








