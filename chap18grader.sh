#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0
finalpoint=19

##There is a typo in the answer key that skips question 2.18
##This script follows the same format dor consistency


#2.1
if [  $(grep 'gzip results.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for gzip results.txt"
    addpoint
    echo "$point"
fi

#2.2
if [  $(grep 'gunzip results.txt.gz' $1 | wc -l) -ge 1 ]
then
    echo "point added for gunzip results.txt.gz"
    addpoint
    echo "$point"

elif [  $(grep 'gzip -d results.txt.gz' $1 | wc -l) -ge 1 ]
then
    echo "point added for gzip -d results.txt.gz"
    addpoint
    echo "$point"
fi

#2.3
if [  $(grep 'gzip -v9 results.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for gzip -v9 results.txt"
    addpoint
    echo "$point"
fi

#2.4
if [  $(grep 'mkdir -p testcompress/dir-{01..10}' $1 | wc -l) -ge 1 ] && [ $(grep 'touch testcompress/dir-{01..10}/file-{A..Z}' $1 | wc -l) -ge 1 ]
then
    echo "point added for testcompress"
    addpoint
    echo "$point"
fi

#2.5
if [  $(grep 'gzip -rv testcompress' $1 | wc -l) -ge 1 ]
then
    echo "point added for gzip -rv testcompress"
    addpoint
    echo "$point"
fi

#2.6
if [  $(grep 'gunzip -rv testcompress' $1 | wc -l) -ge 1 ]
then
    echo "point added for gunzip -rv testcompress"
    addpoint
    echo "$point"
fi

#2.7
if [  $(grep 'zless results.txt.gz' $1 | wc -l) -ge 1 ]
then
    echo "point added for zless results.txt.gz"
    addpoint
    echo "$point"

elif [  $(grep 'zcat results.txt.gz' $1 | wc -l) -ge 1 ]
then
    echo "point added for zcat results.txt.gz"
    addpoint
    echo "$point"

elif [  $(grep 'zmore results.txt.gz' $1 | wc -l) -ge 1 ]
then
    echo "point added for zmore results.txt.gz"
    addpoint
    echo "$point"        
fi

#2.8
if [  $(grep 'gunzip results.txt.gz' $1 | wc -l) -ge 1 ]
then
    echo "point added for gunzip results.txt.gz"
    addpoint
    echo "$point"

elif [  $(grep 'gzip -d results.txt.gz' $1 | wc -l) -ge 1 ]
then
    echo "point added for gzip -d results.txt.gz"
    addpoint
    echo "$point"    
fi

#2.9
if [  $(grep 'bzip2 results.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for bzip2 results.txt"
    addpoint
    echo "$point"
fi

#2.10
if [  $(grep 'bunzip2 results.txt.bz2' $1 | wc -l) -ge 1 ]
then
    echo "point added for bunzip2 results.txt.bz2"
    addpoint
    echo "$point"
fi

#2.11
if [  $(grep 'bzip2 -9 results.txt' $1 | wc -l) -ge 1 ]
then
    echo "point added for bzip2 -9 results.txt"
    addpoint
    echo "$point"
fi

#2.12
if [  $(grep 'bzless results.txt.bz2' $1 | wc -l) -ge 1 ]
then
    echo "point added for bzless results.txt.bz2"
    addpoint
    echo "$point"

elif [  $(grep 'bzcat results.txt.bz2' $1 | wc -l) -ge 1 ]
then
    echo "point added for bzcat results.txt.bz2"
    addpoint
    echo "$point"

elif [  $(grep 'bzmore results.txt.bz2' $1 | wc -l) -ge 1 ]
then
    echo "point added for bzmore results.txt.bz2"
    addpoint
    echo "$point"    
fi


#2.13
if [  $(grep 'tar -cvf testcompress.tar testcompress' $1 | wc -l) -ge 1 ]
then
    echo "point added for tar -cvf testcompress.tar testcompress"
    addpoint
    echo "$point"
fi

#2.14
if [  $(grep 'mkdir testtar' $1 | wc -l) -ge 1 ] && [  $(grep 'cd testtar' $1 | wc -l) -ge 1 ]
then
    echo "point added for mkdir testtar & cd testtar"
    addpoint
    echo "$point"
fi

#2.15
if [  $(grep 'tar -xvf ../testcompress.tar' $1 | wc -l) -ge 1 ]
then
    echo "point added for tar -xvf ../testcompress.tar "
    addpoint
    echo "$point"
fi

#2.16
if [  $(grep 'tar -czvf testcompress.tar.gz testcompress' $1 | wc -l) -ge 1 ]
then
    echo "point added for tar -czvf testcompress.tar.gz testcompress"
    addpoint
    echo "$point"
fi

#2.17
if [  $(grep 'zip tests.zip test1 test2 test3' $1 | wc -l) -ge 1 ]
then
    echo "point added for zip tests.zip test1 test2 test3"
    addpoint
    echo "$point"
fi

#2.19
if [  $(grep 'zip -T tests.zip' $1 | wc -l) -ge 1 ]
then
    echo "point added for zip -T tests.zip"
    addpoint
    echo "$point"
fi

#2.20
if [  $(grep 'unzip tests.zip' $1 | wc -l) -ge 1 ]
then
    echo "point added for unzip tests.zip"
    addpoint
    echo "$point"
fi

echo "Total points in the end is: $point"
echo "Total points should be: $finalpoint"