#!/bin/bash
filename='cat.txt'
n=0
declare -a my_array
while read line; do
    # reading each line
    #echo "Line No. $n : $line"
    my_array[n]="$line"
    #n=$((n+1))
    let n++
done < $filename



echo ${my_array[*]}
