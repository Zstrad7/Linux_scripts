#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=8
chapter=2
if [  $(grep 'pwd' $1 | wc -l) -ge 1 ]
then
echo "point added for pwd"
addpoint
echo "$point"
fi
if [  $(grep 'cd ..' $1 | wc -l) -ge 1 ]
then
echo "point added for cd .."
addpoint
echo "$point"
fi
if [  $(grep 'cd /home/' $1 | wc -l) -ge 1 ]
then
echo "point added for cd /home/user"
addpoint
echo "$point"
fi
if [  $(grep 'cd Documents' $1 | wc -l) -ge 1 ]
then
echo "point added for cd Documents"
addpoint
echo "$point"
fi
if [  $(grep 'cd ../Pictures' $1 | wc -l) -ge 1 ]
then  
echo "point added for cd ../Pictures"
addpoint
echo "$point"
fi
if [  $(grep 'cd ../../../bin' $1 | wc -l) -ge 1 ]
then
echo "point added for cd ../../../bin"
addpoint
echo "$point"
fi
if [  $(grep 'cd /dev' $1 | wc -l) -ge 1 ]
then
echo "point added for cd /dev"
addpoint
echo "$point"
fi
if [  $(grep 'cd' $1 | wc -l) -ge 7 ]
then
echo "point added for cd"
addpoint
echo "$point"
fi
echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"
