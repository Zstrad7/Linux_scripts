#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=6

#1.1
if [  $(grep 'vi script1.sh' $1 | wc -l) -ge 1 ] && [  $(grep 'favorite' $1 | wc -l) -ge 2 ]
then
    echo "point added for vi script1.sh"
    addpoint
    echo "$point"
fi

#1.2
if [  $(grep 'source sample_script1.sh' $1 | wc -l) -ge 1 ]
then
    echo "point added for source sample_script1.sh"
    addpoint
    echo "$point"
fi

#1.3
if [  $(grep '. script1.sh' $1 | wc -l) -ge 1 ]
then
    echo "point added for . script1.sh"
    addpoint
    echo "$point"
fi

#1.4
if [  $(grep 'bash sample_script1.sh' $1 | wc -l) -ge 1 ]
then
    echo "point added for bash sample_script1.sh"
    addpoint
    echo "$point"
fi

#1.5
if [  $(grep 'chmod a+x script1.sh' $1 | wc -l) -ge 1 ]
then
    echo "point added for chmod a+x script1.sh"
    addpoint
    echo "$point"
fi

#1.6
if [  $(grep './script1.sh' $1 | wc -l) -ge 1 ]
then
    echo "point added for ./script1.sh"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"