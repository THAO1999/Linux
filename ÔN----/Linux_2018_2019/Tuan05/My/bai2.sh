#!/bin/bash
echo "Nhap ten file: "
read var;
echo $var
if [ -f $var ]
then
    cat $var
else
    echo "File $var khong ton tai"
fi
