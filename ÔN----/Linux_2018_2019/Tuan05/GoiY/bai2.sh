#!/bin/bash
read fileName
#if $filName
if [ -s file ]
then
    cat $fileName
else
    echo "$fileName khong ton tai"
fi
