#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=11

#1.1
if [  $(grep 'ls -la ~ > pr_test' $1 | wc -l) -ge 1 ]
then
    echo "point added for ls -la ~ > pr_test"
    addpoint
    echo "$point"
fi

#1.2
if [  $(grep 'pr -n -d -h' $1 | wc -l) -ge 1 ]
then
    echo "point added for grep 'pr -n -d -h"
    addpoint
    echo "$point"
fi

elif [  $(grep 'pr -d -n -h' $1 | wc -l) -ge 1 ]
then
    echo "point added for pr -d -n -h"
    addpoint
    echo "$point"
fi

#1.4
if [  $(grep 'sudo lpadmin -p test_printer2 -E -v ipp://1.2.3.4' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo lpadmin -p test_printer2 -E -v ipp://1.2.3.4"
    addpoint
    echo "$point"
fi

#1.5
if [  $(grep 'lpstat -t ' $1 | wc -l) -ge 1 ]
then
    echo "point added for lpstat -t "
    addpoint
    echo "$point"
fi

#1.6
if [  $(grep 'lp -d test_printer2 pr_test' $1 | wc -l) -ge 1 ]
then
    echo "point added for lp -d test_printer2 pr_test"
    addpoint
    echo "$point"
fi

#1.7
if [  $(grep 'lpstat' $1 | wc -l) -ge 1 ]
then
    echo "point added for lpstat"
    addpoint
    echo "$point"
fi

#1.8
if [  $(grep 'cancel test_printer2-' $1 | wc -l) -ge 1 ]
then
    echo "point added for cancel test_printer2-"
    addpoint
    echo "$point"
fi

#1.9
if [  $(grep 'lpr -P test_printer2 pr_test' $1 | wc -l) -ge 1 ]
then
    echo "point added for lpr -P test_printer2 pr_test"
    addpoint
    echo "$point"
fi

#1.10
if [  $(grep 'lpq -P test_printer2' $1 | wc -l) -ge 1 ]
then
    echo "point added for lpq -P test_printer2"
    addpoint
    echo "$point"
fi

#1.11
if [  $(grep 'lprm' $1 | wc -l) -ge 1 ]
then
    echo "point added for lprm"
    addpoint
    echo "$point"
fi

#1.12
if [  $(grep 'sudo lpadmin -x test_printer2' $1 | wc -l) -ge 1 ]
then
    echo "point added for sudo lpadmin -x test_printer2"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"
