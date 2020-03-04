#!/bin/bash

argc=$#      # Get the number of arguments at the command line
argv=("$@")  # Set a vector of arguments as an array

# argc and argv come from the main entry point to a C program:
#    int main(int argc, char** argv)

if [ -z "$1" ]; then
    printf "\nThere were no items entered at the command line.\n"
else
    printf "\nThere were %s items entered at the command line, including the name of the program, \"$0\".\n\n" $argc

    for ((i = 0; i < argc; i++)); do
        echo "The argument at $i is “${argv[i]}”."
    done
fi

printf "\n"

exit 0
