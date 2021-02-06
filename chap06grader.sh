#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=17

#1.1
if [  $(grep ' ls -l > output.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for  ls -l > output.txt"
    addpoint
    echo "$point"
fi

#1.2
if [  $(grep 'cat output.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat output.txt"
    addpoint
    echo "$point"
elif [  $(grep 'less output.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for less output.txt"
    addpoint
    echo "$point"
elif [  $(grep 'more output.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for more output.txt"
    addpoint
    echo "$point"        
fi

#1.3
if [  $(grep 'ls -l top 2> error.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls -l top 2> error.txt"
    addpoint
    echo "$point"    
fi

#1.4
if [  $(grep 'cat error.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat error.txt"
    addpoint
    echo "$point"
elif [  $(grep 'less error.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for less error.txt"
    addpoint
    echo "$point"
elif [  $(grep 'more error.txt ' $1 | wc -l) -ge 1 ]
then
    echo "point added for more error.txt "
    addpoint
    echo "$point"    
fi

#1.5
if [  $(grep 'cat < output.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat < output.txt"
    addpoint
    echo "$point"
fi

#1.6
if [  $(grep ' date >> output.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for  date >> output.txt"
    addpoint
    echo "$point"
fi

#1.7
if [  $(grep 'cat output.txt' $1 | wc -l) -ge 2 ]
then
    echo "point added for cat output.txt"
    addpoint
    echo "$point"
elif [  $(grep 'less output.txt' $1 | wc -l) -ge 2 ]
then
    echo "point added for less output.txt"
    addpoint
    echo "$point"
elif [  $(grep 'more output.txt' $1 | wc -l) -ge 2 ]
then
    echo "point added for more output.txt"
    addpoint
    echo "$point"        
fi

#1.8
if [  $(grep 'ls -R /var/tmp &> output2.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls -R /var/tmp &> output2.txt"
    addpoint
    echo "$point"
elif [  $(grep 'ls -R /var/tmp > output.txt 2>&1' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls -R /var/tmp > output.txt 2>&1"
    addpoint
    echo "$point"    
fi

#1.9
if [  $(grep 'ls -R /var/tmp > out.txt 2> error.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls -R /var/tmp > out.txt 2> error.txt"
    addpoint
    echo "$point"
elif [  $(grep 'ls -R /var/tmp 2> error.txt > out.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls -R /var/tmp 2> error.txt > out.txt"
    addpoint
    echo "$point"    
fi

#1.10
if [  $(grep 'ls -R /var/tmp 2> /dev/null' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls -R /var/tmp 2> /dev/null"
    addpoint
    echo "$point"
fi

#1.11
if [  $(grep 'cat /var/log/syslog | less' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat /var/log/syslog | less"
    addpoint
    echo "$point"
fi

#1.12
if [  $(grep 'cat /var/log/syslog | grep systemd' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat /var/log/syslog | grep systemd"
    addpoint
    echo "$point"
fi

#1.13
if [  $(grep 'cat /var/log/syslog | grep systemd | head -n 20' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat /var/log/syslog | grep systemd | head -n 20"
    addpoint
    echo "$point"
fi

#1.14
if [  $(grep 'cat /var/log/syslog | grep systemd | tail' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat /var/log/syslog | grep systemd | tail"
    addpoint
    echo "$point"
fi

#1.15
if [  $(grep 'cat /var/log/syslog | grep -i error | tee result.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat /var/log/syslog | grep -i error | tee result.txt"
    addpoint
    echo "$point"
fi

#1.16
if [  $(grep 'cat > ships' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat > ships"
    addpoint
    echo "$point"
fi

#1.17
if [  $(grep 'cat ships | sort | uniq' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat ships | sort | uniq"
    addpoint
    echo "$point"
fi

#Outpoint of final points and what they should be
echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"