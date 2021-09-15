#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch all bars
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown
polybar bar3 2>&1 | tee -a /tmp/polybar3.log & disown
polybar bar4 2>&1 | tee -a /tmp/polybar4.log & disown

echo "starting polybar..."
