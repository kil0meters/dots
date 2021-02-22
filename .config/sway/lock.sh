#!/bin/sh

swayidle -w -d \
	timeout 1 'swaylock' \
	timeout 140 'swaymsg "output * dpms off"' \
	resume 'swaymsg "output * dpms on"; sleep 2; swaymsg "output * enable"'
	# before-sleep 'pgrep swaylock || swaylock 0 && true'
