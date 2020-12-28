#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -c ~/dotfiles/polybar/config.ini main &

my_second_monitor=$(xrandr --query | grep 'DVI-I-1')
if [[ $my_second_monitor = *connected* ]]; then
    polybar -c ~/dotfiles/polybar/config.ini second &
fi

