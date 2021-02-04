#!/bin/bash

killall -q polybar

export POLYBAR_PATH="$HOME/.config/polybar/v3"
polybar bar -c $POLYBAR_PATH/config.ini 2>&1 | tee -a /tmp/poybar1.log & disown

echo "POLYBAR LAUNCHED."

