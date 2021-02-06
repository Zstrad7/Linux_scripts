#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=7
chapter=3
if [  $(grep 'ls' $1 | wc -l) -ge 1 ]
then
	echo "point added for ls"
	addpoint
	echo "$point"
fi
if [ $(grep 'ls -l /etc' $1 | wc -l) -ge 1 ]
then
	echo "point added for ls -l /etc"
	addpoint
	echo "$point"
fi
if [ $(grep 'ls -la' $1 | wc -l) -ge 1 ]
then
	echo "point added for ls -la"
	addpoint
	echo "$point"
fi
if [ $(grep 'file /etc/passwd' $1 | wc -l) -ge 1 ]
then
	echo "point added for file /etc/passwd"
	addpoint
	echo "$point"
fi
if [ $(grep 'file ~/Downloads' $1 | wc -l) -ge 1 ]
then
	echo "point added for file ~/Downloads"
	addpoint
	echo "$point"
fi
if [ $(grep '/sh /etc/netplan' $1 | wc -l) -ge 1 ] 
then
	echo "point added for file /usr/bin/sh /etc/netplan"
	addpoint
	echo "$point"
fi
if [ $(grep 'less /etc/passwd' $1 | wc -l) -ge 1 ]
then
	echo "point added for viewing /etc/passwd"
	addpoint
	echo "$point"
elif [ $(grep 'cat /etc/passwd' $1 | wc -l) -ge 1 ]
then
	echo "point added for viewing /etc/passwd"
	addpoint
	echo "$point"
elif [ $(grep 'more /etc/passwd' $1 | wc -l) -ge 1 ]
then
	echo "point added for viewing /etc/passwd"
	addpoint
	echo "$point"
fi
echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"
