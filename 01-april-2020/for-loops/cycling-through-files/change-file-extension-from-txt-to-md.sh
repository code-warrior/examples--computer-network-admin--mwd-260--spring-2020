#!/bin/bash

for each_file in *.txt; do
   mv "$each_file" "${each_file%.txt}.md";
done

exit 0
