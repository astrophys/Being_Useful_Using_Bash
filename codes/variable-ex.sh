#!/bin/bash
# Author  : Ali Snedden
# License : MIT
# Purpose : Illustrate variable substitution
# Refs    : https://tldp.org/LDP/abs/html/parameter-substitution.html
#           Braces explained : https://stackoverflow.com/a/2188369/4021436
#           '$' Explained    : https://stackoverflow.com/a/5163260/4021436
set -e          # Exit if a line ends with error


##### Simple variable assignment #####
# I typically use upper case to denote bash variables
echo "Simple Variable Assignment..."
V1="my simple statement"
echo "V1 = ${V1}"             # Notice the curly braces? Denotes expanding variable
echo "V1 = $V1"               # Note it works w/o the braces. This will burn you sometime

##### Bash Math #####
echo 
echo 
echo "Attempting integer math..."
V1=1+4                          # MISTAKE here
echo "MATH FAIL  : V1 = $V1"    # WHOOPS : prints out variable, note math is NOT done

V1=$(expr 3 + 1)                # WORKS  : Note it is space sensitive...
echo "MATH WORKS : V1 = $V1"    # WORKS

echo 
echo 
echo "Adding two variables..."
V2=38
echo "V2 = ${V2}"
echo "V1 + V2 = $(expr ${V1} + ${V2})"  # Note that leading '$' denotes to do math instead of creating a string
