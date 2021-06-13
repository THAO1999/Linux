#!/bin/bash
count() {
	count=0;
	dir=$1
	for i in `ls $dir`
	do
		count=$(($count+1))
	done
	return $count
}
count ./home/Desktop
echo "So file trong thu muc la: $?"
