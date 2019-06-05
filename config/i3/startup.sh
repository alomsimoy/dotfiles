#!/bin/bash

# Desktop environment
xset b off &
setxkbmap us -variant altgr-intl &
sh ~/.screenlayout/default.sh &
nitrogen --restore &
compton &
dunst &
unclutter &

# Applications
# firefox-developer-edition &
# fastmail &
# whatsapp &
# gmail-brujula &
# gmail-odigeo &
# chat-brujula &
# chat-odigeo &
# slack-onefront &
# slack-brujula &
# slack-odf &
# calendar &
google-chrome-stable &
slack &
idea &
