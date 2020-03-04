#!/bin/bash

# “This is equal to “$1” "$2" ... "$N", where N is the number of positional parameters. That is, it’s equal to N separate, double-quoted strings, which are separated by spaces.”
# — Learning the bash Shell, p86.

# If the first argument is null (that is, a length of 0),...
if [ -z "$1" ]; then
    echo "No arguments were entered into the command line."
else
    echo "$@"
fi

exit 0
