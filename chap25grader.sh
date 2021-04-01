#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=5

#2.1
if [  $(grep 'cp script1.sh script2.sh' $1 | wc -l) -ge 1 ] && [  $(grep 'vi script2.sh' $1 | wc -l) -ge 1 ] && [  $(grep '=' $1 | wc -l) -ge 2 ]
then
    echo "point added for script2"
    addpoint
    echo "$point"
fi

#2.2
if [  $(grep '$' $1 | wc -l) -ge 2 ]
then
    echo "point added for ---"
    addpoint
    echo "$point"
fi

#2.3
if [  $(grep "Today's date is $(date)" $1 | wc -l) -ge 1 ]
then
    echo "point added for date"
    addpoint
    echo "$point"
fi

#2.4
if [  $(grep 'Here is the calendar of this month' $1 | wc -l) -ge 1 ] && [  $(grep 'cal' $1 | wc -l) -ge 1 ]
then
    echo "point added for cal"
    addpoint
    echo "$point"
fi

#2.5
if [  $(grep 'script2.sh' $1 | wc -l) -ge 2 ]
then
    echo "point added for script2.sh run"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"