#!/bin/bash

# extension=".md"
# new_extension=".txt"

extension=$1
new_extension=$2

for each_file in *"${extension}"; do
   mv "$each_file" "${each_file%${extension}}${new_extension}"
done
