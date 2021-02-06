#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=

#
if [  $(grep '' $1 | wc -l) -ge 1 ]
then
    echo "point added for "
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"
