#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=5
chapter=1

#1.1
if [  $(grep 'date' $1 | wc -l) -ge 1 ]
then
    echo "point added for date"
    addpoint
    echo "$point"
fi

#1.2
if [  $(grep 'cal' $1 | wc -l) -ge 1 ]
then
    echo "point added for cal"
    addpoint
    echo "$point"
fi

#1.3
if [  $(grep '1991' $1 | wc -l) -ge 1 ]
then
    echo "point added for aug 1991"
    addpoint
    echo "$point"
fi

#1.4
if [  $(grep 'df -h' $1 | wc -l) -ge 1 ]
then
    echo "point added for df -h"
    addpoint
    echo "$point"
fi

#1.5
if [  $(grep 'free -h' $1 | wc -l) -ge 1 ]
then
    echo "point added for free -h"
    addpoint
    echo "$point"
fi

#Outpoint of final points and what they should be
echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"
