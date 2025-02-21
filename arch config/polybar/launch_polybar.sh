#!/bin/bash

# Get the primary monitor name
primary_monitor=$(xrandr --query | grep "primary" | cut -d" " -f1)

# Launch Polybar on the primary monitor
MONITOR=$primary_monitor polybar --reload example &

