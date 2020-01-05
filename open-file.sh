#!/bin/bash

# check if there is user parameter
if [[ ! $1 ]]; then
    echo "please give input"
    exit 1
fi

directory="$(pwd)/bin"

# check if the directory exists
if [[ ! -d $directory ]]; then
    if mkdir "${directory}"; then
        echo "created directory ${directory}"
    else
        echo "creation directory failed"
        exit 1
    fi
fi

# check if the file name valid (not system reserved)

if type $1 > /dev/null 2>&1; then
    echo "the file name exists ${1}"
    exit 1
fi

file=${directory}/$1

# check if the file exists
if [[ -e $file ]]; then
    echo "the file exists"
    exit 1
fi

if [[ ! $EDITOR ]]; then
    echo "you do not have default editor setup"
    exit 1
else
    echo "#!/bin/bash" > $file
    chmod u+x $file
    $EDITOR "$file"
fi



        
