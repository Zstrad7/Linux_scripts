#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=10

#1.1
if [  $(grep 'sudo apt update' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo apt update"
    addpoint
    echo "$point"
fi

#1.2
if [  $(grep 'sudo apt list --installed vim' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo apt list --installed vim"
    addpoint
    echo "$point"
fi

#1.3
if [  $(grep 'sudo apt list --upgradable' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo apt list --upgradable"
    addpoint
    echo "$point"
fi

#1.4
if [  $(grep 'sudo apt upgrade' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo apt upgrade"
    addpoint
    echo "$point"
fi

#1.5
if [  $(grep 'apt search libreoffice' $1 | wc -l) -ge 1 ]
then
    echo "point added for apt search libreoffice"
    addpoint
    echo "$point"
fi

#1.6
if [  $(grep 'sudo apt install libreoffice' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo apt install libreoffice"
    addpoint
    echo "$point"
fi

#1.7
if [  $(grep 'libreoffice &' $1 | wc -l) -ge 1 ]
then
    echo "point added for libreoffice &"
    addpoint
    echo "$point"
fi

#1.10
if [  $(grep 'ls ~/Documents' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls ~/Documents"
    addpoint
    echo "$point"
fi

#1.11
if [  $(grep 'apt show libreoffice' $1 | wc -l) -ge 1 ]
then
    echo "point added for apt show libreoffice"
    addpoint
    echo "$point"
fi

#1.12
if [  $(grep 'sudo apt remove libreoffice' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo apt remove libreoffice"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"
