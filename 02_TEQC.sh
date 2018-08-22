#!/bin/sh

for i in $(ls *.tgd *.dat)
	do teqc -tr d +obs + -tbin 1d $(echo $i|cut -b 1-4) $i
done
