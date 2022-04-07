#!/bin/bash
# Skript: u4_1_zahlen_raten.sh
# Aufruf: u4_1_zahlen_raten.sh

# Create random number between 1-20
number=$[$RANDOM %20]

# Print the cue to the console and asign input to a variable
read -p "Enter a number between 1 and 20: " guess

# Check that input is not equal to number with -ne (not equal)
while [ $number -ne $guess ]
do
    # Check if input is smaller with -gt (greater than)
    if [ $number -gt $guess ]
    then
        read -p "Zu kleine Zahl(Geben sie eine groessere ein): " guess
    fi

    # Check if input is bigger with -lt (less than)
    if [ $number -lt $guess ]
    then
        read -p "Eine zu grosse Zahl(Geben sie eine kleinere ein): " guess
    fi
done

echo "Das war die richtige Zahl!"
