#!/bin/bash

cur=$( cat /sys/class/backlight/intel_backlight/brightness )
step=10
if [ "$1" -eq 0 ]
then
	sudo tee /sys/class/backlight/intel_backlight/brightness <<< $(($cur+50))
else
	sudo tee /sys/class/backlight/intel_backlight/brightness <<< $(($cur-50))
fi
