#!/bin/bash
#
# einfacher for loop
#
difs=0
line=0
paste $1 $2
while IFS="$(printf '\t'" read -r f1 f2
do
    let line++
    if [[ $f1 != $f2 ]]
    then
        let difs++
        echo $line":"$f1
        echo $line":"$f2
    fi
done
echo $difs" Zeilen unterschiedlich"
