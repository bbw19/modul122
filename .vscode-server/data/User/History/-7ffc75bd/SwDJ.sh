#!/bin/bash
# Skript: u4_1_zahlen_raten.sh
# Aufruf: u4_1_zahlen_raten.sh

# Create random number between 1-20
number=$[$RANDOM %20]

# Print the cue to the console and asign input to a variable
read -p "Enter a number between 1 and 20: " guess

while [$number -le $guess]
do
    echo $number $guess
    if [$number > $guess]
    then
        read -p "Zu kleine Zahl(Geben sie eine groessere ein): " guess
    fi

    if [$number < $guess]
    then
        read -p "Eine zu grosse Zahl(Geben sie eine kleinere ein): " guess
    fi
done
