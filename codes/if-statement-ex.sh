#!/bin/bash
# Author  : Ali Snedden
# License : MIT
# Purpose : Illustrate conditionals
# Refs    : TLDP - if statements : https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html
#          
#         
set -e          # Exit if a line ends with error

#### Simple if statement ####
echo "Simple if statement"
if [ -a codes/if-statement-ex.sh ]; then    ## Note [  ] delineates conditional
    echo "codes/if-statement-ex.sh EXISTS"
fi


#### Simple if else statement ####
echo
echo
echo "if / else statement"
if [ -a codes/if-statement-ex.sh ]; then    ## Note [  ] delineates conditional
    echo "codes/if-statement-ex.sh EXISTS"
else
    echo "codes/if-statement-ex.sh DNE"
fi
