#!/bin/bash

while getopts "ld" opt; do
	case "$opt" in 
		l)
			nitrogen --set-scaled $HOME/Pictures/Walls/citylowcontrast.jpg
			;;
		d)
			nitrogen --set-scaled $HOME/Pictures/Walls/cityinvertedlowcontrast.jpg
			;;
	esac
done

