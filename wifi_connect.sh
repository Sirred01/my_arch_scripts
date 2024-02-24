#!/bin/sh

nmcli dev wifi rescan

BSSID=$(nmcli dev wifi list | sed -n '1!p' | cut -b 9- | dmenu -p "Select wifi > " -l 20 | cut -d' ' -f1)

pass=$(echo "" | dmenu -p "Enter password >")

if [ $pass -eq 0 ]; then
    nmcli dev wifi connect $BSSID 
else 
    nmcli dev wifi connect $BSSID password $pass
fi

