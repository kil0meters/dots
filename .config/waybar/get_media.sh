#!/bin/sh

media=$(playerctl --player=spotify metadata -f "{{artist}} - {{title}}")
player_status=$(playerctl --player=spotify status)

if [[ $player_status = "Playing" ]]
then
    song_status=''
elif [[ $player_status = "Paused" ]]
then
    song_status=''
else
    song_status='Music stopped'
fi

echo -e "$song_status $media"

