#!/bin/bash

# “This is a single string that consists of all of the positional parameters, separated by the first character in the value of the environment variable IFS (internal field separator), which is a space, TAB, and NEWLINE by default.”
# — Learning the bash Shell, p86.

echo "$*"

exit 0
