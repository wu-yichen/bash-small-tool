#!/bin/bash

function get_available_space() {
    return `df / -h | awk '{print $4}' | tail -n1 | tr -d '[A-Za-z]'`
}

get_available_space
available_space=$?

min_required_space=100
if [[ $available_space -lt ${min_required_space} ]]; then
    echo "warning! your available space is ${available_space}GB which is less than ${min_required_space}GB"
else
    echo "ALL GOOD"
fi
