#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
# polybar-msg cmd quit

# Otherwise you can use the nuclear option:
killall -q polybar


# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
echo "---" | tee -a /tmp/polybar1.log
polybar main 2>&1 | tee -a /tmp/polybar1.log & disown

if [[ $(xrandr -q | grep 'HDMI-A-0 connected') ]]; then
    echo "---" | tee -a /tmp/polybar2.log
    polybar secondary 1>&1 | tee -a /tmp/polybar2.log & disown
fi

echo "Polybar launched..."
