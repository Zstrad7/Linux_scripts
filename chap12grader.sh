#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=1

#2.1
if [  $(grep 'vimtutor' $1 | wc -l) -ge 1 ]
then
    echo "point added for vimtutor"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"
