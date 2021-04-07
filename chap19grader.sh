#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=13

#1.1
if [  $(grep 'man ls > ls.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for man ls > ls.txt"
    addpoint
    echo "$point"
fi

#1.2
if [  $(grep 'grep with ls.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for grep with ls.txt"
    addpoint
    echo "$point"
fi

#1.3
if [  $(grep 'grep ‘l..t’ ls.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for grep ‘l..t’ ls.txt"
    addpoint
    echo "$point"
fi

#1.4
if [  $(grep 'touch file{01..20}' $1 | wc -l) -ge 1 ]
then
    echo "point added for mkdir test_day8 & touch file{01..20}"
    addpoint
    echo "$point"
fi

#1.5
if [  $(grep "ls | grep ‘file0[2-8]’" $1 | wc -l) -ge 1 ]
then
    echo "point added for ls | grep ‘file0[2-8]’"
    addpoint
    echo "$point"
fi

#1.6
if [  $(grep "ls | grep -v ‘file0[2-8]’" $1 | wc -l) -ge 1 ]
then
    echo "point added for ls | grep -v ‘file0[2-8]’"
    addpoint
    echo "$point"
fi

#1.7
if [  $(grep 'touch FILE{01..20}' $1 | wc -l) -ge 1 ]
then
    echo "point added for touch FILE{01..20}"
    addpoint
    echo "$point"
fi

#1.8
if [  $(grep "ls | grep ‘[fF]*1[1-9]’" $1 | wc -l) -ge 1 ]
then
    echo "point added for ls | grep ‘[fF]*1[1-9]’"
    addpoint
    echo "$point"
fi

#1.9
if [  $(grep "ls | grep -n ‘[fF]*1[1-9]’ " $1 | wc -l) -ge 1 ]
then
    echo "point added for ls | grep -n ‘[fF]*1[1-9]’ "
    addpoint
    echo "$point"
fi

#1.10
if [  $(grep "ls | grep ‘[[:lower:]][[:digit:]]’" $1 | wc -l) -ge 1 ]
then
    echo "point added for ls | grep ‘[[:lower:]][[:digit:]]’"
    addpoint
    echo "$point"
fi

#1.11
if [  $(grep 'cat > test.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat > test.txt"
    addpoint
    echo "$point"
fi

#1.12
if [  $(grep "grep -E 'Comp?uter' test.txt" $1 | wc -l) -ge 1 ]
then
    echo "point added for grep -E 'Comp?uter' test.txt"
    addpoint
    echo "$point"
fi

#1.13
if [  $(grep "grep -E ‘Comp+uter’ test.txt" $1 | wc -l) -ge 1 ]
then
    echo "point added for grep -E ‘Comp+uter’ test.txt"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"