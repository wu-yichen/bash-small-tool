#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "the input must by exactly 2"
    exit 1
fi

if [[ ! -d "$1" || ! -d "$2" ]]; then
    echo "please give a folder"
    exit 1
fi

folder1="$1"
folder2="$2"

count1=$(ls -A1 ${folder1} | wc -l)
count2=$(ls -A1 ${folder2} | wc -l)


if [[ "${count1}" -gt "${count2}" ]]; then
    echo "${folder1} has more files"
    exit 0
elif [[ "${count1}" -eq "${count2}" ]]; then
    echo "${folder1} and ${folder2} have the same amount of files"
    exit 0
else
    echo "${folder2} has more files"
    exit 0
fi

