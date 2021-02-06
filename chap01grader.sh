#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=5
chapter=1
if [  $(grep 'date' $1 | wc -l) -ge 1 ]
then
echo "point added for date"
addpoint
echo "$point"
fi
if [  $(grep 'cal' $1 | wc -l) -ge 1 ]
then
echo "point added for cal"
addpoint
echo "$point"
fi
if [  $(grep '1991' $1 | wc -l) -ge 1 ]
then
echo "point added for aug 1991"
addpoint
echo "$point"
fi
if [  $(grep 'df -h' $1 | wc -l) -ge 1 ]
then
echo "point added for df -h"
addpoint
echo "$point"
fi
if [  $(grep 'free -h' $1 | wc -l) -ge 1 ]
then
echo "point added for free -h"
addpoint
echo "$point"
fi
echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"
