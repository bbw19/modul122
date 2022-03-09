#!/bin/sh
# a.)
# Lösung
#du -a



#ls -l | awk '{print $7 " " $9}' | column -t

# b.)
# Lösung
#total=`du -sh | awk '{print $1}'`
#echo "Der totale Speicherbedarf betraegt: $total"



#ls -l -d */ | awk '{print $7 " " $9}' | column -t

# c.)
# Lösung
# -k 5nr nach Grösse
# -k 8n nach name
ls -l | sort $1 $2  
