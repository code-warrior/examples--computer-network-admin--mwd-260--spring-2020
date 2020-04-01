#!/bin/bash

# Create a.txt, b.txt, c.txt, and d.txt in one shot.
touch {a,b,c,d}.txt

# List all the previously-created files.
for a_file in *.txt; do
   echo "$a_file";
done

# List all the previously-created files sans extension.
for a_file in *.txt; do
   echo "${a_file%.txt}";
done

exit 0
