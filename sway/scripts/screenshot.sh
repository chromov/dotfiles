#!/bin/bash
 
entries="Active Screen Output Area Window"
 
selected=$(printf '%s\n' $entries | wofi --style=$HOME/.config/wofi/style.widgets.css --conf=$HOME/.config/wofi/config.screenshot | awk '{print tolower($1)}')

/usr/share/sway/scripts/grimshot --notify save $selected - | swappy -f -
# case $selected in
#   active)
#   screen)
#     /usr/share/sway/scripts/grimshot --notify save screen;;
#   output)
#     /usr/share/sway/scripts/grimshot --notify save output;;
#   area)
#     /usr/share/sway/scripts/grimshot --notify save area;;
#   window)
#     /usr/share/sway/scripts/grimshot --notify save window;;
# esac
