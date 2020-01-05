#!/bin/bash


while [[ 1 -eq 1 ]]; do
    if [[ $# -ne 1 ]]; then
        echo "please provide 1 parameter" 2>&1
    else
        process_name=$1
        if [[ -z $(pgrep $process_name) ]]; then
            echo "cannot detect process ${process_name} !"
        fi
    fi

    sleep 5
done
