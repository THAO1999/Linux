#!/bin/bash
echo "Nhap vao gia tri i ban dau: "
read i
while [ $i != 5 && $i < 5 ]
do
	echo "in ra lan thu $i"
	i=`expr $i + 1`
done
