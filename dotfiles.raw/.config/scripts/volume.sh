#!/bin/bash

# Conf
STEP="5"
UNIT="%" # [dB, %]
CHANNEL="Front Right" # Channel to listen changes

# Set volume
SETVOL="amixer set Master"

# Get volume and state
function getVolume {
    STATE=$(amixer get Master | grep "$CHANNEL:" | grep -o "\[off\]")
    VOLUME=$(amixer get Master | grep "$CHANNEL:" | egrep -o "([0-9]+)%" | egrep -o "[0-9]+")

    if [[ -n $STATE ]]; then
        echo $1
    else
        echo $VOLUME
    fi
}

case "$1" in
    "up")
        $SETVOL unmute
        $SETVOL $STEP$UNIT+
        ;;
    "down")
        $SETVOL unmute
        $SETVOL $STEP$UNIT-
        ;;
    "mute")
        $SETVOL toggle
        ;;
    "get")
        echo `getVolume "mute"`
        exit 0
        ;;
esac

volnoti-show `getVolume "-m"`

exit 0
