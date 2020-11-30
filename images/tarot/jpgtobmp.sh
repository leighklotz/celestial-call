#!/bin/bash

infile=$1
outfile=$2

convert ${infile} -resize x204 $$-foo.jpg
./color2gray ./$$-foo.jpg $$-bar.pbm
ppmtobmp $$-bar.pbm -bpp 1 >${outfile}
#file $outfile
#eog $outfile
echo $outfile
rm $$-foo.jpg $$-bar.pbm

