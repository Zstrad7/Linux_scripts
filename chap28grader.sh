#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=4

#
if [  $(grep '-d' $1 | wc -l) -ge 1 ]
then
    echo "point added for directory test"
    addpoint
    echo "$point"
fi

#
if [  $(grep 'mkdir' $1 | wc -l) -ge 1 ]
then
    echo "point added for making directory"
    addpoint
    echo "$point"
fi

#
if [  $(grep '-f' $1 | wc -l) -ge 1 ]
then
    echo "point added for file test"
    addpoint
    echo "$point"
fi

#
if [  $(grep 'd10script2.sh' $1 | wc -l) -ge 1 ]
then
    echo "point added for running script"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"