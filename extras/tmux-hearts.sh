#!/bin/bash

# modified from http://aaronlasseigne.com/2012/10/15/battery-life-in-the-land-of-tmux/
# not useful by itself, it's invoked by tmux.conf

HEART='♥'

# This should be a shell command that gives the remaining battery percentage as a number (without percent sign) from 0 to 100.
percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage: | awk '{print $2}' | sed 's/\%//')

# Divide by ten and round up (that's what the +5 is for) to determine how many hearts are "on."
charged_slots=$(echo "($percentage + 5) / 10" | bc)

if [[ $charged_slots -gt 10 ]]; then
  charged_slots=10
fi

echo -n '#[fg=colour196]'
for i in `seq 1 $charged_slots`; do echo -n "$HEART"; done

if [[ $charged_slots -lt 10 ]]; then
  echo -n '#[fg=white]'
  for i in `seq 1 $(echo "10-$charged_slots" | bc)`; do echo -n "$HEART"; done
fi
