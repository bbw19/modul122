#!/bin/sh
foo="why are you gay"
echo $foo

if [ ! -z "$foo" ]
then
echo $foo
fi

if test -z "$foo"
then 
echo "who says I'm gay"
else
echo "should I call you mista"
fi
