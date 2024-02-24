#!/bin/sh

#while true; do
#    sleep 1800
#    bat=$(battery | grep -oP '\d+(?=%)')
#    if [ "$bat" -lt 900 ]; then
#        break
#    fi
#done

while true; do
    # Get battery percentage
    bat=$(battery | grep -oP '\d+(?=%)')

    if [ "$bat" -lt 15 ]; then
        notify-send "⚠️ Low battery"
        paplay ~/music/ringtones/low_battery.mp3
        sleep 300
        break
    fi
done

while true; do
    # Get battery percentage
    bat=$(battery | grep -oP '\d+(?=%)')

    if [ "$bat" -lt 10 ]; then
        notify-send "⚠️ Low battery"
        paplay ~/music/ringtones/low_battery.mp3
        sleep 300 
        break
    fi
done

while true; do
    # Get battery percentage
    bat=$( battery | grep -oP '\d+(?=%)')

    if [ "$bat" -lt 5 ]; then
        notify-send "⚠️ Plug in charger"
        paplay ~/music/ringtones/low_battery.mp3
        sleep 300
        break
    fi
done

