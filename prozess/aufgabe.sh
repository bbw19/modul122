#!/bin/bash
# Skript: aufgabe.sh
# Aufruf: aufgabe.sh prozess

if test $# -ne 1
then
    echo "Yoo! Enter the process you want to know about."
    echo "Usabe: aufgabe.sh process"
else
    if ps | grep $1
    then
        echo "Process $1 is running"
    else
        echo "Process $1 is not running"
    fi
fi
