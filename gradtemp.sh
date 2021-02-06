#!/bin/bash

addpoint () {
point=$(("$point"+1))
}
point=0

echo "Total points in the end is: $point"
echo "Total points should be: "
