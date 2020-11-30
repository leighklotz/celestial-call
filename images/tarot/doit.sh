#!/bin/bash

p=0
for infile in *.jpg
do
    outfile=$(printf "p%02d.bmp" $p)
    ./jpgtobmp.sh ${infile} ${outfile}
    ((p++))
done
