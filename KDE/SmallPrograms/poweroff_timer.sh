#!/bin/bash

t=15

if [ $# -eq 1 ]; then
    t=$1
else
    echo "No argument given, defaulting to 15"
fi

echo "Shutting down in " $t

while [ $t -gt 0 ]; do
    echo "- " $t
    t=$((t - 1))
    sleep 60
done

echo "Done! Goodnight ^_^"
sleep 1
poweroff
