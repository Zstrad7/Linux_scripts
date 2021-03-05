#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=12

#2.1
if [  $(grep 'ps' $1 | wc -l) -ge 1 ]
then
    echo "point added for ps"
    addpoint
    echo "$point"      
fi

#2.2
if [  $(grep 'ps -e' $1 | wc -l) -ge 1 ]
then
    echo "point added for ps -e"
    addpoint
    echo "$point"       
fi

#2.3
if [  $(grep 'xeyes' $1 | wc -l) -ge 1 ]
then
    echo "point added for xeyes"
    addpoint
    echo "$point"
fi

#2.4
if [  $(grep -i 'Z' $1 | wc -l) -ge 1 ]
then
    echo "point added for ctl Z"
    addpoint
    echo "$point"
fi

#2.5
if [  $(grep 'jobs' $1 | wc -l) -ge 1 ]
then
    echo "point added for jobs"
    addpoint
    echo "$point"
fi

#2.6
if [  $(grep 'fg' $1 | wc -l) -ge 1 ]
then
    echo "point added for fg"
    addpoint
    echo "$point"

elif [  $(grep 'fg' $1 | wc -l) -ge 1 ]
then
    echo "point added for fg %1"
    addpoint
    echo "$point"    
fi

#2.7
if [  $(grep -i 'Z' $1 | wc -l) -ge 2 ]
then
    echo "point added for ctl Z"
    addpoint
    echo "$point"

elif [  $(grep 'bg' $1 | wc -l) -ge 1 ]
then
    echo "point added for bg"
    addpoint
    echo "$point"

elif [  $(grep 'bg %1' $1 | wc -l) -ge 1 ]
then
    echo "point added for bg %1"
    addpoint
    echo "$point"        
fi

#2.8
if [  $(grep 'kill -9' $1 | wc -l) -ge 1 ]
then
    echo "point added for kill -9"
    addpoint
    echo "$point"

elif [  $(grep 'kill KILL' $1 | wc -l) -ge 1 ]
then
    echo "point added for Kill KILL"
    addpoint
    echo "$point"          
fi

#2.9
if [  $(grep 'xeyes &' $1 | wc -l) -ge 3 ]
then
    echo "point added for  3 xeyes"
    addpoint
    echo "$point"       
fi

#2.10
if [  $(grep 'killall xeyes' $1 | wc -l) -ge 1 ]
then
    echo "point added for killall xeyes"
    addpoint
    echo "$point"
fi

#2.11
if [  $(grep 'top' $1 | wc -l) -ge 1 ]
then
    echo "point added for top"
    addpoint
    echo "$point"
fi

#2.12
if [  $(grep 'pstree' $1 | wc -l) -ge 1 ]
then
    echo "point added for pstree"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"