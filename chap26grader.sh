#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=5

#3.1
if [  $(grep 'vi script3.sh' $1 | wc -l) -ge 1 ] && [  $(grep '() {' $1 | wc -l) -ge 1 ]
then
    echo "point added for script3"
    addpoint
    echo "$point"
fi

#3.2
if [  $(grep 'int=14' $1 | wc -l) -ge 1 ] && [  $(grep 'int2=7 ' $1 | wc -l) -ge 1 ] && [  $(grep 'result=0' $1 | wc -l) -ge 1 ]
then
    echo "point added for variables"
    addpoint
    echo "$point"
fi

#3.3
if [  $(grep 'result=$(( "$int1" * "$int2" ))' $1 | wc -l) -ge 1 ] && [  $(grep '$int1 * $int2 = $result' $1 | wc -l) -ge 1 ]
then
    echo "point added for multiply function"
    addpoint
    echo "$point"
fi

#3.4
if [  $(grep 'result=$(( "$int1" / "$int2" ))' $1 | wc -l) -ge 1 ] && [  $(grep '$int1 / $int1 = $result' $1 | wc -l) -ge 1 ]
then
    echo "point added for ---"
    addpoint
    echo "$point"
fi

#3.5
if [  $(grep 'script3.sh' $1 | wc -l) -ge 1 ]
then
    echo "point added for running script3"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"
