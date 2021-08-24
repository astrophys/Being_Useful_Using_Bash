#!/bin/bash
# Author  : Ali Snedden
# License : MIT
# Purpose : Illustrate Loops
# Refs    : TLDP - Command Subsition : https://tldp.org/LDP/abs/html/commandsub.html
#          
#         
set -e          # Exit if a line ends with error

#### Simple command substitution ####
DIRSIZE=`du -hs`
echo "Size of current directory : ${DIRSIZE}"
echo
echo


#### In a Loop - sort of silly ####
for f in `ls codes`; do
    echo "f = ${f}"
done

