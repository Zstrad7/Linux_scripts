#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=15

#2.1
if [  $(grep 'cat > famous_ships' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat > famous_ships"
    addpoint
    echo "$point"
fi

#2.2
if [  $(grep 'sort famous_ships' $1 | wc -l) -ge 1 ]
then
    echo "point added for sort famous_ships"
    addpoint
    echo "$point"
fi

#2.3
if [  $(grep 'sort -r famous_ships' $1 | wc -l) -ge 1 ]
then
    echo "point added for sort -r famous_ships"
    addpoint
    echo "$point"
fi

#2.4
if [  $(grep 'wc -l famous_ships' $1 | wc -l) -ge 1 ]
then
    echo "point added for wc -l famous_ships"
    addpoint
    echo "$point"
fi

#2.5
if [  $(grep 'wc -w famous_ships' $1 | wc -l) -ge 1 ]
then
    echo "point added for wc -w famous_ships"
    addpoint
    echo "$point"
fi

#2.6
if [  $(grep 'wc -c famous_ships' $1 | wc -l) -ge 1 ]
then
    echo "point added for wc -c famous_ships"
    addpoint
    echo "$point"
fi

#2.7
if [  $(grep '-f1 > famous_ship_first' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat famous_ships | cut -d" " -f1 > famous_ship_first"
    addpoint
    echo "$point"
fi

#2.8
if [  $(grep '-f2 > famous_ship_last' $1 | wc -l) -ge 1 ]
then
    echo "point added for -f2 > famous_ship_last"
    addpoint
    echo "$point"
fi

#2.9
if [  $(grep 'paste famous_ships_last famous_ships_first' $1 | wc -l) -ge 1 ]
then
    echo "point added for paste famous_ships_last famous_ships_first"
    addpoint
    echo "$point"
fi

#2.10
if [  $(grep 'cat famous_ships | sort | uniq ' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat famous_ships | sort | uniq "
    addpoint
    echo "$point"
fi

#2.11
if [  $(grep 'cp famous_ship famous_ships2' $1 | wc -l) -ge 1 ] && [  $(grep 'cat >> famous_ships2' $1 | wc -l) -ge 1 ]
then
    echo "point added for cp famous_ship famous_ships2 & "
    addpoint
    echo "$point"
fi

#2.12
if [  $(grep 'diff -c famous_ships famous_ships2' $1 | wc -l) -ge 1 ]
then
    echo "point added for diff -c famous_ships famous_ships2"
    addpoint
    echo "$point"
fi

#2.13
if [  $(grep 'diff -c famous_ships famous_ships2 > diff_ship' $1 | wc -l) -ge 1 ]
then
    echo "point added for diff -c famous_ships famous_ships2 > diff_ship"
    addpoint
    echo "$point"
fi

#2.14
if [  $(grep 'patch < diff_ship' $1 | wc -l) -ge 1 ]
then
    echo "point added for patch < diff_ship"
    addpoint
    echo "$point"
fi

#2.15
if [  $(grep 'aspell check famous_ship' $1 | wc -l) -ge 1 ]
then
    echo "point added for aspell check famous_ship"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"