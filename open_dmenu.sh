#!/bin/sh 

sudo cat ~/.local/bin/open_list | dmenu -p "select tool >" -l 20 | xargs -I{} bash -c 'file=$(find ~/ -type f | dmenu -p "select file >" -l 20); {} "$file"'
