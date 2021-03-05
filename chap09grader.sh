#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=11

#1.1
if [  $(grep 'id' $1 | wc -l) -ge 1 ]
then
    echo "point added for id"
    addpoint
    echo "$point"

elif [  $(grep 'cat /etc/group' $1 | wc -l) -ge 1 ]
then
    echo "point added for cat /etc/group"
    addpoint
    echo "$point"  

elif [  $(grep 'groups' $1 | wc -l) -ge 1 ]
then
    echo "point added for groups"
    addpoint
    echo "$point"      
fi

#1.2
if [  $(grep 'touch test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for test1"
    addpoint
    echo "$point"

elif [  $(grep '> test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for test1"
    addpoint
    echo "$point"    
fi

#1.3
if [  $(grep 'ls -l' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls -l test1"
    addpoint
    echo "$point"

elif [  $(grep 'ls -l test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls -l test1"
    addpoint
    echo "$point"    
fi

#1.4
if [  $(grep 'chmod 766 test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for chmod 766 test1"
    addpoint
    echo "$point"

elif [  $(grep 'chmod u=rwx,g=rw,o=rw test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for chmod u=rwx,g=rw,o=rw test1"
    addpoint
    echo "$point"

elif [  $(grep 'chmod u+x,o+w test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for chmod u+x,o+w test1"
    addpoint
    echo "$point"        
fi

#1.5
if [  $(grep 'chmod 444 tests1' $1 | wc -l) -ge 1 ]
then
    echo "point added for chmod 444 tests1"
    addpoint
    echo "$point"

elif [  $(grep 'chmod u-wx,g-w,o-w test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for chmod u-wx,g-w,o-w test1"
    addpoint
    echo "$point"

elif [  $(grep 'chmod u=r,g=r,o=r test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for chmod u=r,g=r,o=r test1"
    addpoint
    echo "$point"  

elif [  $(grep 'chmod a=r test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for chmod a=r test1"
    addpoint
    echo "$point"          
fi

#1.6
if [  $(grep 'chmod 755 test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for chmod 755 test1"
    addpoint
    echo "$point"
fi

#1.7
if [  $(grep 'umask' $1 | wc -l) -ge 1 ]
then
    echo "point added for umask"
    addpoint
    echo "$point"
fi

#1.8
if [  $(grep 'su' $1 | wc -l) -ge 1 ]
then
    echo "point added for su"
    addpoint
    echo "$point"

elif [  $(grep 'su -' $1 | wc -l) -ge 1 ]
then
    echo "point added for su -"
    addpoint
    echo "$point"

elif [  $(grep 'su root' $1 | wc -l) -ge 1 ]
then
    echo "point added for su root"
    addpoint
    echo "$point"        
fi

#1.9
if [  $(grep 'exit' $1 | wc -l) -ge 1 ]
then
    echo "point added for exit"
    addpoint
    echo "$point"
fi

#1.10
if [  $(grep 'sudo cat /etc/ppp/chap-secrets' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo cat /etc/ppp/chap-secrets"
    addpoint
    echo "$point"

elif [  $(grep 'sudo less /etc/ppp/chap-secrets' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo less /etc/ppp/chap-secrets"
    addpoint
    echo "$point"

elif [  $(grep 'sudo more /etc/ppp/chap-secrets' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo more /etc/ppp/chap-secrets"
    addpoint
    echo "$point"        
fi

#1.11
if [  $(grep 'sudo chown root:root test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo chown root:root test1"
    addpoint
    echo "$point"

elif [  $(grep 'sudo chown root: test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo chown root: test1"
    addpoint
    echo "$point"  

elif [  $(grep 'sudo chown root test1' $1 | wc -l) -ge 1 ]
then
    echo "point added for ---"
    addpoint
    echo "$point"     
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"
