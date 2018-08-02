#!/bin/sh

for i in {1..99}
do
    out=$(( $i % 2 ))
    if [ $out -ne 0 ]
    then
        echo $i
    fi
done