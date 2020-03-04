#!/bin/bash

# “This is equal to “$1” "$2" ... "$N", where N is the number of positional parameters. That is, it’s equal to N separate, double-quoted strings, which are separated by spaces.”
# — Learning the bash Shell, p86.

echo "$@"

exit 0
