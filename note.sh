#!/bin/bash

# get the date

date=$(date)

# get user input topic

topic="$1"

# read the notes from user input

read -p "please write your notes: " note

if [[ ! "$note" ]]; then
    echo "it is an empty notes" 1>&2
else
    # write note to the txt file
    echo "$date: $note" >> "${HOME}/workspace/bash-script/${topic}note.txt"
    echo "note '$note' saved" 
fi
