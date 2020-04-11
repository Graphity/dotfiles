#!/bin/bash

file="$( readlink -f $1 )"

ln -sf $file ~/Pics/Wallpapers/current && feh --bg-scale $1 2> /dev/null
