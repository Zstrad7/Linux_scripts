#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=8

#2.2
if [  $(grep 'tar -xvf Python' $1 | wc -l) -ge 1 ]
then
    echo "point added for tar -xvf Python"
    addpoint
    echo "$point"
fi

elif [  $(grep 'tar -xfv Python' $1 | wc -l) -ge 1 ]
then
    echo "point added for tar -xvf Python"
    addpoint
    echo "$point"
fi

elif [  $(grep 'tar -vxf Python' $1 | wc -l) -ge 1 ]
then
    echo "point added for tar -xvf Python"
    addpoint
    echo "$point"
fi

if [  $(grep 'tar -vfx Python' $1 | wc -l) -ge 1 ]
then
    echo "point added for tar -xvf Python"
    addpoint
    echo "$point"
fi

elif [  $(grep 'tar -fxv Python' $1 | wc -l) -ge 1 ]
then
    echo "point added for tar -xvf Python"
    addpoint
    echo "$point"
fi

elif [  $(grep 'tar -fvx Python' $1 | wc -l) -ge 1 ]
then
    echo "point added for tar -xvf Python"
    addpoint
    echo "$point"
fi

#2.3
if [  $(grep 'cd Python' $1 | wc -l) -ge 1 ]
then
    echo "point added for cd Python"
    addpoint
    echo "$point"
fi

#2.4
if [  $(grep 'less README' $1 | wc -l) -ge 1 ]
then
    echo "point added for less README"
    addpoint
    echo "$point"
fi

#2.5
if [  $(grep 'sudo apt install' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo apt install"
    addpoint
    echo "$point"
fi

#2.6
if [  $(grep 'configure' $1 | wc -l) -ge 1 ]
then
    echo "point added for configure"
    addpoint
    echo "$point"
fi

#2.7
if [  $(grep 'make' $1 | wc -l) -ge 1 ]
then
    echo "point added for make"
    addpoint
    echo "$point"
fi

#2.8
if [  $(grep 'sudo make install' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo make install"
    addpoint
    echo "$point"
fi

#2.9
if [  $(grep 'python3 --version' $1 | wc -l) -ge 1 ]
then
    echo "point added for python3 --version"
    addpoint
    echo "$point"
fi



echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"