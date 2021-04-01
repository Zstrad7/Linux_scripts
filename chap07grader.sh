#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=13

#2.1
if [  $(grep 'echo Good Afternoon' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo Good Afternoon"
    addpoint
    echo "$point"
elif [  $(grep 'echo “Good Afternoon”' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo “Good Afternoon”"
    addpoint
    echo "$point"    
fi

#2.2
if [  $(grep 'echo Day{A,B,C}' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo Day{A,B,C}"
    addpoint
    echo "$point"
fi

#2.3
if [  $(grep 'mkdir test{1..3}' $1 | wc -l) -ge 1 ]
then
    echo "point added for mkdir test{1..3}"
    addpoint
    echo "$point"
fi

#2.4
if [  $(grep 'touch test{1..3}/file{1..3}' $1 | wc -l) -ge 1 ]
then
    echo "point added for touch test{1..3}/file{1..3}"
    addpoint
    echo "$point"
fi

#2.5
if [  $(grep 'echo D*' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo D*"
    addpoint
    echo "$point"
fi

#2.6
if [  $(grep 'echo *s' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo *s"
    addpoint
    echo "$point"
fi

#2.7
if [  $(grep 'echo [[:upper:]]*' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo [[:upper:]]*"
    addpoint
    echo "$point"
elif [  $(grep 'echo [A-Z]*' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo [A-Z]*"
    addpoint
    echo "$point"    
fi

#2.8
if [  $(grep 'echo $PWD' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo $PWD"
    addpoint
    echo "$point"
fi

#2.9
if [  $(grep 'sample1=5' $1 | wc -l) -ge 1 ] && [ $(grep 'sample2=7' $1 | wc -l) -ge 1 ]
then
    echo "point added for "
    addpoint
    echo "$point"
fi

#2.10
if [  $(grep 'echo $(( $sample1 + $sample2 ))' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo $(( $sample1 + $sample2 ))"
    addpoint
    echo "$point"
elif [  $(grep 'echo $(( sample1 + sample2 ))' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo $(( sample1 + sample2 ))"
    addpoint
    echo "$point"
fi

#2.11
if [  $(grep 'echo $(( $sample1 / $sample2 ))' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo $(( \$\sample1 / \$\sample2 ))"
    addpoint
    echo "$point"
elif [  $(grep 'echo $(( sample1 / sample2 ))' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo $(( sample1 / sample2 ))"
    addpoint
    echo "$point"
fi

#2.12
if [  $(grep 'echo \$ 8.00 / hour \(that’s my hourly wage\) \* 8 hours \* 5 days = \$ 350.00 / week \(did I do the math right\?\) ' $1 | wc -l) -ge 1 ]
then
    echo "8.00 / hour (that’s my hourly wage) * 8 hours * 5 days = $ 350.00 / week (did I do the math right?) "
    addpoint
    echo "$point"
fi

#2.13
if [  $(grep 'echo ‘$(( $sample1 + $sample2 ))’' $1 | wc -l) -ge 1 ]
then
    echo "point added for echo ‘$(( \$\sample1 + \$\sample2 ))’"
    addpoint
    echo "$point"
elif [  $(grep 'echo \$\(\( \$sample1 + \$sample2 \)\) ' $1 | wc -l) -ge 1 ]
then
    echo "point added for $(( \$\sample1 + \$\sample2 )) "
    addpoint
    echo "$point"    
fi

#Outpoint of final points and what they should be
echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"