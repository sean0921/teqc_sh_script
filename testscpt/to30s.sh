#!/bin/sh

for i in $(ls *_15s); do sh -c "teqc -O.dec 30 $i > $(echo $i|cut -b 1-12)_30s"; done
