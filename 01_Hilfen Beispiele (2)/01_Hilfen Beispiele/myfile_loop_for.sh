#!/bin/bash
#
# listet 10 Zeilen der Datei
#
zeile=""
n=0
#for (( j=10; j>0; j=j-1))
for (( j=0; j<10; j=j+1))
do
    #let anzahl++
    #$n=$((n+1))
    read zeile
    my_array[j]="$zeile"
    echo $j $zeile
done <cat.txt
#echo $n": Anzahl zeilen"
printf "%s\t%i" ${my_array[*]} $j
