#!/bin/bash
# Skript: umleitung.sh
# Aufruf: umleitung.sh
# Autor: Julien Rädler

# lists all files with a .txt ending
# ls -l | grep "\.txt$"


ls -l | sed -e "s/[aeio]/u/g"
