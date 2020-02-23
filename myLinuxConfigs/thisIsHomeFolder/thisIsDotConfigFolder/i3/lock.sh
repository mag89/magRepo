#!/bin/bash

# Make screenshot
scrot /tmp/screen.png

# Scale image
convert /tmp/screen.png -scale 50% -scale 200% -paint 3 /tmp/screen1.png

# remove screen.png
rm -f /tmp/screen.png

# Lock screen
i3lock -f -e -i /tmp/screen1.png
