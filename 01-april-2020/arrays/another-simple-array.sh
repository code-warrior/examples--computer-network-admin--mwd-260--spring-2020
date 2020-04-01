#!/bin/bash

# Although un-needed, it’s good style to let you and others know that an array as been declared.
web_pioneers=()

web_pioneers[0]="Vannevar Bush"
web_pioneers[1]="Douglas Englebart"
web_pioneers[2]="Ray Tomlinson"
web_pioneers[3]="Vint Cerf"
web_pioneers[4]="Marc Andreesen"
web_pioneers[5]="Tim Berners-Lee"

printf "%s wrote the seminal article As We May Think in 1945.\n" "${web_pioneers[0]}"
printf "%s gave The Mother of All Demos in 1968.\n" "${web_pioneers[1]}"
printf "%s invented email.\n" "${web_pioneers[2]}"
printf "%s co-invented TCP/IP.\n" "${web_pioneers[3]}"
printf "%s co-authored the first widely-used Internet browsers, Mosaic.\n" "${web_pioneers[4]}"
printf "%s created the URL, HTTP, and HTML.\n" "${web_pioneers[5]}"

exit 0
