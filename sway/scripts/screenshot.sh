#!/bin/bash

entries="Active Screen Output Area Window"
selected=$(printf '%s\n' $entries | wofi --style=$HOME/.config/wofi/style.widgets.css --conf=$HOME/.config/wofi/config.screenshot | awk '{print tolower($1)}')

/usr/share/sway-contrib/grimshot --notify save $selected - | swappy -f -
