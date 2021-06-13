#!/bin/bash
countFile()
{
    count=0
    dir=$1
    for i in `ls $dir`
    do
	count=$(($count+1))
    done
    return $count
}
countFile /home/student/Desktop/test
echo "So file la $?"
