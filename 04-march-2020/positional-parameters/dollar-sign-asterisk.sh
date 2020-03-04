#!/bin/bash

# “This is a single string that consists of all of the positional parameters, separated by the first character in the value of the environment variable IFS (internal field separator), which is a space, TAB, and NEWLINE by default.”
# — Learning the bash Shell, p86.

# If the first argument is null (that is, a length of 0),...
if [ -z "$1" ]; then
    echo "No arguments were entered into the command line."
else
    echo "$*"
fi

exit 0
