#!/bin/bash

# Redirect output of this script’s PID ($$) to a new (or existing) file called pid.txt
echo $$ > pid.txt

# Keep this script running so we can see the PID of the current script
# using commands such as the “ps” command.
for (( ; ; )); do
   echo "" > /dev/null 2>&1
done

exit 0
