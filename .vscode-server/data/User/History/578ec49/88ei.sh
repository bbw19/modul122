#!/bin/bash
# Skript: umleitung.sh
# Aufruf: umleitung.sh
# Autor: Julien Rädler

# lists all files with a .txt ending
# ls -l | grep "\.txt$"

# replaces aeio with u 
# ls -l | sed -e "s/[aeio]/u/g"

ls -l > ls-l.txt
