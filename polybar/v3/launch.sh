#!/bin/bash

killall -q polybar

export POLYBAR_PATH="$HOME/.config/polybar/v3"
if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload bar -c $POLYBAR_PATH/config.ini  &
    done
else
    polybar bar -c $POLYBAR_PATH/config.ini 2>&1 | tee -a /tmp/poybar1.log & disown
fi

echo "POLYBAR LAUNCHED."

