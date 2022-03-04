#!/bin/bash
# Das ist ein Kommentar
promt="Do you want to know?"

echo $promt
read my_name

if [ $my_name == "yes" ]
then
echo "Hello - get fucked."
else
echo "Ok bye"
fi