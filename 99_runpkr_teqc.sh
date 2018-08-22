#!/bin/sh

case "$1" in

	dir)
		cd $2 && \
			for i in $(ls *.T0[0-2])
			do runpkr00 -g -d $i
			done \
		&& \
			for j in $(ls *.tgd || ls *.dat)
			do teqc -tr d +obs + -tbin 1d $(echo $j|cut -b 1-4) $j
			done
		;;

	*)
		echo "Usage: ${0} dir {directory name}"
		;;

esac

exit 0
