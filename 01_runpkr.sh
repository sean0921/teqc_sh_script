#!/bin/sh
for i in `cat list`
do runpkr00 -g -d $i
done
