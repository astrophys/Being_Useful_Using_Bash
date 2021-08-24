#!/bin/bash
# Author  : Ali Snedden
# License : MIT
# Purpose : Illustrate Loops
# Refs    : TLDP - Loops : https://tldp.org/LDP/abs/html/loops1.html
#          
#         
set -e          # Exit if a line ends with error


#### Simple Counting for loop####
echo "Counting to 10..."
for((i=0; i<=10; i++)); do 
    echo "i = ${i}"
done


echo 
echo
echo "Looping over code files..."
for f in codes/*; do
    echo "f = ${f}"
done

echo 
echo
