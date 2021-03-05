#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=7

#1.1
if [  $(grep 'echo $PWD' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo PWD"
    addpoint
    echo "$point" 
fi

#1.2
if [  $(grep 'set' $1 | wc -l) -ge 1 ]
then
    echo "point added for set"
    addpoint
    echo "$point"
fi

#1.3
if [  $(grep 'env' $1 | wc -l) -ge 1 ]
then
    echo "point added for env"
    addpoint
    echo "$point"

elif [  $(grep 'printenv' $1 | wc -l) -ge 1 ]
then
    echo "point added for printenv"
    addpoint
    echo "$point"    
fi

#1.4
if [  $(grep 'echo $UID' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo UID"
    addpoint
    echo "$point"
fi

#1.5
if [  ($(grep 'OS=Linux' $1 | wc -l) -ge 1) ]
then
    echo "point added for OS=Linux and DISTRO=Ubuntu "
    addpoint
    echo "$point"
fi

#1.6
if [  $(grep 'MYOS=“${DISTRO}-${OS}”; export MYOS' $1 | wc -l) -ge 1 ]
then
    echo "point added for MYOS=“{DISTRO}-{OS}”; export MYOS"
    addpoint
    echo "$point"

elif [  $(grep 'export MYOS=“${DISTRO}-${OS}”' $1 | wc -l) -ge 1 ]
then
    echo "point added for export MYOS=“{DISTRO}-{OS}”"
    addpoint
    echo "$point"       
fi

#1.7
if [  $(grep 'bash' $1 | wc -l) -ge 1 ]
then
    if [  $(grep 'echo $MYOS' $1 | wc -l) -ge 1 ]
    then
        echo "point added for echo MYOS"
        addpoint
        echo "$point"

    elif [  $(grep 'set' $1 | wc -l) -ge 1 ]
    then
        echo "point added for set"
        addpoint
        echo "$point"   

    elif [  $(grep '$env' $1 | wc -l) -ge 1 ]
    then
        echo "point added for env"
        addpoint
        echo "$point"   

    elif [  $(grep 'printenv' $1 | wc -l) -ge 1 ]
    then
        echo "point added for printenv"
        addpoint
        echo "$point"           
    fi
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"
