#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=12

#1.1
if [  $(grep 'touch findme.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for touch findme.txt"
    addpoint
    echo "$point"

elif [  $(grep '> findme.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for > findme.txt"
    addpoint
    echo "$point"
fi

#1.2
if [  $(grep 'sudo updatedb' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo updatedb"
    addpoint
    echo "$point"
fi

#1.3
if [  $(grep 'locate findme.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for locate findme.txt"
    addpoint
    echo "$point"
fi

#1.4
if [  $(grep 'locate *.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for locate *.txt"
    addpoint
    echo "$point"
fi

#1.5
if [  $(grep 'find ~ -name findme.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for find ~ -name findme.txt"
    addpoint
    echo "$point"
fi

#1.6
if [  $(grep 'find ~ -name “*.txt” >results.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for find ~ -name “*.txt” >results.txt"
    addpoint
    echo "$point"
fi

#1.7
if [  $(grep 'touch FILE1' $1 | wc -l) -ge 1 ]
then
    echo "point added for touch FILE1"
    addpoint
    echo "$point"

elif [  $(grep '> FILE1' $1 | wc -l) -ge 1 ]
then
    echo "point added for > FILE1"
    addpoint
    echo "$point"    
fi

#1.8
if [  $(grep 'find ~ -iname "file*" | less' $1 | wc -l) -ge 1 ]
then
    echo 'point added find ~ -iname "file*" | less'
    addpoint
    echo "$point"
fi

#1.9
if [  $(grep 'find /etc -type d | less' $1 | wc -l) -ge 1 ]
then
    echo "point added for find /etc -type d | less"
    addpoint
    echo "$point"
fi

#1.10
if [  $(grep 'find ~ -size -5k' $1 | wc -l) -ge 1 ]
then
    echo "point added for find ~ -size -5k"
    addpoint
    echo "$point"
fi

#1.11
if [  $(grep 'find ~ -perm 0775' $1 | wc -l) -ge 1 ]
then
    echo "point added for find ~ -perm 0775"
    addpoint
    echo "$point"
fi

#1.12
if [  $(grep 'find ~ -empty  -type f ' $1 | wc -l) -ge 1 ]
then
    echo "point added for find ~ -empty  -type f"
    addpoint
    echo "$point"

elif [  $(grep 'find ~ -type f -size 0c' $1 | wc -l) -ge 1 ]
then
    echo "point added for find ~ -type f -size 0c"
    addpoint
    echo "$point"

elif [  $(grep 'find ~ -type f -size 0k' $1 | wc -l) -ge 1 ]
then
    echo "point added for find ~ -type f -size 0k"
    addpoint
    echo "$point"        
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"