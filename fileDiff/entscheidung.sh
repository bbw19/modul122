#!/bin/bash
# Skript: entscheidung.sh
# Aufruf: entscheidung.sh dateiname1 dateiname2
if test $# -ne 2
then
 echo "Sie müssen zwei Dateinamen als Argumente eingeben!"
 echo "Usage: entscheidung.sh dateiname1 dateiname2"
else
 echo "Hier werden die beiden Dateien bearbeitet"
fi