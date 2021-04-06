#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=4

#1.1
if [  $(grep 'if' $1 | wc -l) -ge 11 ]
then
    echo "point added for if testing"
    addpoint
    echo "$point"
fi

#1.1
if [  $(grep 'odd' $1 | wc -l) -ge 2 ]
then
    echo "point added for odd months and odd days"
    addpoint
    echo "$point"
fi

#1.1
if [  $(grep 'even' $1 | wc -l) -ge 2 ]
then
    echo "point added for even months and even days"
    addpoint
    echo "$point"
fi

#1.1
if [  $(grep 'd10script1.sh' $1 | wc -l) -ge 1 ]
then
    echo "point added for running script"
    addpoint
    echo "$point"
fi


echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"