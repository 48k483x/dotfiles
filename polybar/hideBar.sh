#!/bin/bash

GAP_HIDDEN=10
GAP_VISIBLE=55

if pgrep -x "polybar" > /dev/null
then
    killall -q polybar
    i3-msg gaps top all set $GAP_HIDDEN
else
    polybar mybar &
    i3-msg gaps top all set $GAP_VISIBLE
fi

