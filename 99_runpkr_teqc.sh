#!/bin/sh

case "$1" in

	dir)
		cd $2 && \
			for i in $(ls *.[Tt]0[0-2])
			do runpkr00 -g -d $i
			done \
		&& \
			for j in $(ls *.tgd *.dat)
			do teqc -tr d +obs + -tbin 1d $(echo $j|cut -b 1-4) $j
			done
		;;
		
	dirh)
		cd $2 && \
			for i in $(ls *.[Tt]0[0-2])
			do runpkr00 -g -d $i
			done \
		&& \
			for j in $(ls *.tgd *.dat)
			do teqc -tr d +obs + -tbin 1h $(echo $j|cut -b 1-4) $j
			done \
		&& \
			for k in $(ls *.1[1-9]o)
			do teqc -phc $k >> $(echo $k|cut -b 1-7)1$(echo $k|cut -b 9-12)
			done
		;;


	*)
		echo "Usage: ${0} dir {directory name}"
		;;

esac

exit 0
