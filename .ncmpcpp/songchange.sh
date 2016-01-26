#!/bin/bash

TRACK=$(mpc current)
STATISTICS="$HOME/.ncmpcpp/log.txt"

(
    echo $(date +%a\ %d.%m.%Y\ %H:%M:%S | tr a-z A-Z)
    echo ${TRACK[@]}
    echo
) >> "$STATISTICS"

notify-send "$TRACK"