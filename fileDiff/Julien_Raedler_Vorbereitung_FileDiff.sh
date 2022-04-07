#!/bin/bash
# Skript: Julien_Raedler_Vorbereitung_FileDiff.sh
# Aufruf: Julien_Raedler_Vorbereitung_FileDiff.sh

# Prüft, ob ein Parameter mitgegeben wurde
if test $# -ne 1
# Wenn kein Parameter mitgegeben wird, wird das ausgeführt
then
 echo "Kein Parameter mitgegeben"

# Wenn ein Parameter mitgegeben wurde, wird das ausgeführt
else
 echo "Ein Parameter mitgegeben"

# Das beendet das if statement
fi


# Prüft, ob der Parameter dem String Hallo entspricht
if [[ $1 == "Hallo" ]]
# Wenn der Parameter Hallo ist, wird das ausgeführt
then
 echo "Der Parameter war Hallo"

# Wenn der Parameter Hallo nicht Hallo ist, wird das ausgeführt
else
 echo "Der Parameter war nicht Hallo"

# Das beendet das if statement
fi


# Prüft ob ein Parameter leer ist
if [ -z "$1" ]
# Wenn der Parameter leer ist, wird das ausgeführt
then
 echo "Der Parameter war leer"

# Wenn der Parameter nicht leer ist, wird das ausgeführt
else
 echo "Der Parameter war nicht leer"

# Das beendet das if statement
fi


# Prüft ob ein Parameter die Nummer eins ist
if [ $1 -eq 1 ]
# Wenn der Parameter die Nummer eins ist, wird das ausgeführt
then
 echo "Der Parameter ist die Nummer 1"

# Wenn der Parameter nicht die Nummer eins ist, wird das ausgeführt
else
 echo "Der Parameter ist nicht die Nummer 1"

# Das beendet das if statement
fi


# Vergleicht zwei Strings
if [[ $1 == "Hallo" ]]
# Wenn der Parameter Hallo ist, wird das ausgeführt
then
 echo "Der Parameter war der String Hallo"

# Wenn der Parameter Hallo nicht Hallo ist, wird das ausgeführt
else
 echo "Der Parameter war nicht der String Hallo"

# Das beendet das if statement
fi


# For-Loop 
# Erstelle eine Range
for i in {1..5}
do
    echo $i
done


# For Loop um Zeilen aus File zu lesen
for line in `cat text.txt`
do
    echo $line
done


# While Loop um Zeilen aus File zu lesen
while read line; do
# Inhalt der Zeile ausgeben 
    echo $line
# Der Inhalt wird in den while loop geleitet
done < text.txt



# Variable inkrementieren
# Variable definieren
var=0
# For Loop erstellen
for i in {1..5}
do
    # Variable in Doppelten klammern ohne Dollar zeichen inkrementieren
    ((var=var+1))
    echo $var
done