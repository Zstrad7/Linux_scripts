#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=9

#2.3
if [  $(grep 'lsblk' $1 | wc -l) -ge 1 ]
then
    echo "point added for lsblk"
    addpoint
    echo "$point"

elif [  $(grep 'dh' $1 | wc -l) -ge 1 ]
then
    echo "point added for dh"
    addpoint
    echo "$point"

elif [  $(grep 'mount' $1 | wc -l) -ge 1 ]
then
    echo "point added for mount"
    addpoint
    echo "$point"        
fi

#2.4
if [  $(grep 'sudo umount' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo umount"
    addpoint
    echo "$point"
fi

#2.5
if [  $(grep 'sudo mkdir /mnt/MyUSB' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo mkdir /mnt/MyUSB"
    addpoint
    echo "$point"
fi

#2.6
if [  $(grep 'sudo mount' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo mount"
    addpoint
    echo "$point"
fi

#2.7
if [  $(grep 'lsblk' $1 | wc -l) -ge 1 ]
then
    echo "point added for lsblk"
    addpoint
    echo "$point"

elif [  $(grep 'dh' $1 | wc -l) -ge 1 ]
then
    echo "point added for dh"
    addpoint
    echo "$point"

elif [  $(grep 'mount' $1 | wc -l) -ge 1 ]
then
    echo "point added for mount"
    addpoint
    echo "$point" 
fi

#2.8
if [  $(grep 'ls' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls  /mnt/MyUSB"
    addpoint
    echo "$point"
fi

#2.9
if [  $(grep 'cp' $1 | wc -l) -ge 1 ]
then
    echo "point added for cp ~/Documents/librefile1.docx /mnt/MyUSB"
    addpoint
    echo "$point"
fi

#2.10
if [  $(grep 'sudo umount' $1 | wc -l) -ge 2 ]
then
    echo "point added for sudo umount"
    addpoint
    echo "$point"
fi

#2.11
if [  $(grep 'sudo eject' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo eject"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"
