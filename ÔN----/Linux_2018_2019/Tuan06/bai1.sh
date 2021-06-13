#!/bin/bash
echo "Nhap vao mot so nguyen n: "
read n
tong=1
for ((i=1; i<=n; i++))
do
	tong=`expr $tong + $i`
done
echo "Tong tu 1 den $n la = $tong"
