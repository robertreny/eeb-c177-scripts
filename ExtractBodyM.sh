#!/bin/bash 
#previous line telling where to find the script
# remove header and specify patht to file
# select only columns 2-6 and specify delimter ; 
# replace delimter ; with a space
# sort by column 6 -k numerically -n in reverse -r
# To run automatically from any prompt need to change permissions. r-- indicates others can only read the file and not execute it. Need to change permissions
tail -n +2 $1 | cut -d $2 -f 2-6| tr ';' ' '| sort -r -n -k 6 > $3
