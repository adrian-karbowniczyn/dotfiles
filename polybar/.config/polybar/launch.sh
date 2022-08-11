#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar anarchy --config=$HOME/.config/polybar/config.ini --reload &
  #  MONITOR=$m polybar top --config=$HOME/.config/polybar/config.ini --reload &
  done
else
  polybar anarchy --config=$HOME/.config/polybar/config.ini --reload &
 # polybar top --config=$HOME/.config/polybar/config.ini --reload &
fi
