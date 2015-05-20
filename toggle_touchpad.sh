#!/bin/bash
#
# Language: bash
# Last Change:04/08/15
#
# This shell script enables/disables the touchpad on synaptics driver
# Requires libnotify, xfce4-notifyd
#
if [ $(synclient -l | grep TouchpadOff | awk '{print $3}') == 1 ]; then
synclient TouchpadOff=0;
notify-send "Touchpad enabled";
else
synclient TouchpadOff=1;
notify-send "Touchpad disabled";
#
fi
#
# A shortcut to this script can be assigned to enable Fn key functionality