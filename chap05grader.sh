#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=10

#2.1
if [  $(grep 'type mkdir' $1 | wc -l) -ge 1 ]
then
    echo "point added for type mkdir"
    addpoint
    echo "$point"
fi

#2.2
if [  $(grep 'type type' $1 | wc -l) -ge 1 ]
then
    echo "point added for type type"
    addpoint
    echo "$point"
fi

#2.3
if [  $(grep 'type ls' $1 | wc -l) -ge 1 ]
then
    echo "point added for type ls"
    addpoint
    echo "$point"
fi

#2.4
if [  $(grep 'which man' $1 | wc -l) -ge 1 ]
then
    echo "point added for which man"
    addpoint
    echo "$point"
fi

#2.5
if [  $(grep 'man mkdir' $1 | wc -l) -ge 1 ]
then
    echo "point added for man mkdir"
    addpoint
    echo "$point"
elif [  $(grep 'mkdir --help' $1 | wc -l) -ge 1 ]
then
    echo "point added for mkdir --help"
    addpoint
    echo "$point"
elif [  $(grep 'info mkdir' $1 | wc -l) -ge 1 ]
then
    echo "point added for info mkdir"
    addpoint
    echo "$point"
fi

#2.6
if [  $(grep 'apropos calendar' $1 | wc -l) -ge 1 ]
then
    echo "point added for apropos calendar"
    addpoint
    echo "$point"
fi

#2.7
if [  $(grep ' whatis ls' $1 | wc -l) -ge 1 ]
then
    echo "point added for whatis ls"
    addpoint
    echo "$point"
fi

#2.8
if [  $(grep "alias mycommand='ls -la'" $1 | wc -l) -ge 1 ]
then
    echo "point added for alias mycommand='ls -la'"
    addpoint
    echo "$point"
elif [  $(grep "alias mycommand='ls -al'" $1 | wc -l) -ge 1 ]
then
    echo "point added for alias mycommand='ls -al'"
    addpoint
    echo "$point"    
fi

#2.9
if [  $(grep 'mycommand /' $1 | wc -l) -ge 1 ]
then
    echo "point added for mycommand /"
    addpoint
    echo "$point"
fi

#2.10
if [  $(grep 'unalias mycommand ' $1 | wc -l) -ge 1 ]
then
    echo "point added for unalias mycommand "
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"