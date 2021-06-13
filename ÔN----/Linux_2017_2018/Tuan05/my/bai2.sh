#!/bin/bash
echo "Nhap ten file: "
read var;
file=`-f $var`
echo $file
if[-f $file]
then
    more $file
else
    echo "File $var khong ton tai"
fi
