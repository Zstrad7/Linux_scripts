#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=7

#
if [  $(grep 'while' $1 | wc -l) -ge 1 ]
then
    echo "point added for while loop"
    addpoint
    echo "$point"
fi

#
if [  $(grep 'read' $1 | wc -l) -ge 1 ]
then
    echo "point added for read command"
    addpoint
    echo "$point"
fi

#
if [  $(grep 'while read' $1 | wc -l) -ge 1 ]
then
    echo "point added for reading in a file"
    addpoint
    echo "$point"
fi

#
if [  $(grep 'free -h' $1 | wc -l) -ge 1 ]
then
    echo "point added for free -h"
    addpoint
    echo "$point"
fi

#
if [  $(grep 'df -h' $1 | wc -l) -ge 1 ]
then
    echo "point added for df -h"
    addpoint
    echo "$point"
fi

#
if [  $(grep 'break' $1 | wc -l) -ge 1 ]
then
    echo "point added for break"
    addpoint
    echo "$point"
fi

#
if [  $(grep 'done' $1 | wc -l) -ge 1 ]
then
    echo "point added for done"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"