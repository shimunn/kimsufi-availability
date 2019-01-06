#!/bin/bash
#Usage: ./check.sh <product e.g. KS-1> [Interval = 5m]
echo "Polling for ${1:-KS-1} every ${2:-5m}(s)"
while [ -z "$(./kimsufi.py $3 ${1:-KS-1})" ]; do
 sleep ${2:-5m};
done
notify-send -u critical "${1:-KS-1} is available! Quick: https://www.kimsufi.com/"
