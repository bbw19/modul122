#!/bin/bash
# Skript: umleitung.sh
# Aufruf: umleitung.sh
# Autor: Julien Rädler

# lists all files with a .txt ending
# ls -l | grep "\.txt$"

# replaces aeio with u 
# ls -l | sed -e "s/[aeio]/u/g"

# creates a text file (ls-l.txt) with a list of all the filles in the folder
# ls -l > ls-l.txt

Cat dateiDieEsNichtGibt.txt 2> error.txt
