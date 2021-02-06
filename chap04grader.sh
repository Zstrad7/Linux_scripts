#!/bin/bash

#Point add function
addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=19

#1.1
if [  $(grep 'x86*' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls /bin/x86* "
    addpoint
    echo "$point"
fi

#1.2
if [  $(grep 'loop*' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls ls /dev/loop* "
    addpoint
    echo "$point"
fi

#1.3
if [  $(grep 'loop?' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls  ls /dev/loop? "
    addpoint
    echo "$point"
fi

#1.4
if [  $(grep '*2*' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls ls *2* "
    addpoint
    echo "$point"
fi

#1.5
if [  $(grep 'ttyS2[0-9]' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls ttyS2[0-9] "
    addpoint
    echo "$point"
fi

#1.6
if [  $(grep '*[[:digit:]]' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls *[[:digit:]]  "
    addpoint
    echo "$point"
fi

#1.7
if [  $(grep 'mkdir HOE3' $1 | wc -l) -ge 1 ]
then
    echo "point added for mkdir HOE3 "
    addpoint
    echo "$point"
fi

#1.8
if [  $(grep 'touch file' $1 | wc -l) -ge 5 ]
then
    echo "point added for ls /bin/x86* "
    addpoint
    echo "$point"
fi

#1.9
if [  $(grep 'cp /etc/services ~/HOE3/file6' $1 | wc -l) -ge 1 ]
then
    echo "point added for cp /etc/services ~/HOE3/file6 "
    addpoint
    echo "$point"
fi

#1.10
if [  $(grep 'mkdir day3fun' $1 | wc -l) -ge 1 ]
then
    echo "point added for mkdir day3fun "
    addpoint
    echo "$point"
fi

#1.11
if [  $(grep 'mv file[1-6] day3fun/' $1 | wc -l) -ge 1 ]
then
    echo "point added for mv file[1-6] day3fun/ "
    addpoint
    echo "$point"
elif [ $(grep 'mv file' $1 | we -l) -ge 6 ]
fi

#1.12
if [  $(grep 'mv day3fun day3_fun' $1 | wc -l) -ge 1 ]
then
    echo "point added for mv day3fun day3_fun "
    addpoint
    echo "$point"
fi

#1.13
if [  $(grep 'cp -r day3_fun/ day3_firesta' $1 | wc -l) -ge 1 ]
then
    echo "point added for cp -r day3_fun/ day3_firesta "
    addpoint
    echo "$point"
fi

#1.14
if [  $(grep 'rm -r day3_fiesta' $1 | wc -l) -ge 1 ]
then
    echo "point added for rm -r day3_fiesta "
    addpoint
    echo "$point"
fi

#1.15
if [  $(grep 'ln file6 file6_hard' $1 | wc -l) -ge 1 ]
then
    echo "point added for ln file6 file6_hard "
    addpoint
    echo "$point"
fi

#1.16
if [  $(grep 'ln -s file6 file6_soft ' $1 | wc -l) -ge 1 ]
then
    echo "point added for ln -s file6 file6_soft  "
    addpoint
    echo "$point"
fi

#1.17
if [  $(grep 'ls –li' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls –li "
    addpoint
    echo "$point"
elif [  $(grep 'ls –il' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls –il "
    addpoint
    echo "$point"
fi

#1.18
if [  $(grep 'rm file6' $1 | wc -l) -ge 1 ]
then
    echo "point added for rm file6 "
    addpoint
    echo "$point"
fi

#1.19
if [  $(grep 'less file6_hard' $1 | wc -l) -ge 1 ]
then
    echo "point added for less file6_hard "
    addpoint
    echo "$point"

elif [  $(grep 'cat file6_hard' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat file6_hard "
    addpoint
    echo "$point"

elif [  $(grep 'more file6_hard' $1 | wc -l) -ge 1 ]
then
    echo "point added for more file6_hard "
    addpoint
    echo "$point"

elif [  $(grep 'less file6_soft' $1 | wc -l) -ge 1 ]
then
    echo "point added for less file6_soft "
    addpoint
    echo "$point"

elif [  $(grep 'cat file6_soft' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat file6_soft "
    addpoint
    echo "$point"
    
elif [  $(grep 'more file6_soft' $1 | wc -l) -ge 1 ]
then
    echo "point added for more file6_soft "
    addpoint
    echo "$point"
fi


#Outpoint of final points and what they should be
echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"