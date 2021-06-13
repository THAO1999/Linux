#!/bin/bash
#bai 3
for item in *.doc
do
	mv "$item" "${item%doc}txt"
done

#bai 3 cach 2:
file=`ls -1 *.txt`
for item in $file
do
	mv $item "`basename $item .txt`.doc"
done
