#!/bin/bash

# If the first argument is null (that is, a length of 0),...
if [ -z "$1" ]; then
    echo "No arguments were entered at the command line."
else
    echo "There were $# arguments at the command line, not including the name of this script, which is $0"
fi

exit 0
