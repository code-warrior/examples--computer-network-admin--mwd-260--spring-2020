#!/bin/bash

# This is a comment, but the shebang line above is not

echo Hello, world

# Every script ends with an exit status. Run echo $? from The Terminal to see the exit status of the last command. Returning 0 is fine; non-zero indicates failure.

# 127 is returned by the child process indicating that the command was not found. If a command is found but not executable, the return status is 126.
exit 0
