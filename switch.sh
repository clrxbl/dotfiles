#!/bin/bash
#https://wiki.archlinux.org/index.php/PulseAudio/Examples#Having_both_speakers_and_headphones_plugged_in_and_switching_in_software_on-the-fly
#eth0.co

current=$(pactl list sinks |& grep "Active Port: analog-output-")

#Switch to Speakers
if [[ $current == *"headphones"* ]]; then
	pacmd set-sink-port 1 analog-output-lineout
	amixer -c 0 sset "Auto-Mute Mode" Disabled
	notify-send 'Audio Output Switch' 'Switched to Speakers.'  --icon=audio-volume-medium

#Switch to Headphones
elif [[ $current == *"lineout"* ]]; then
	pacmd set-sink-port 1 analog-output-headphones
	amixer -c 0 sset "Auto-Mute Mode" Enabled
	notify-send 'Audio Output Switch' 'Switched to Headphones.' --icon=audio-volume-medium
fi