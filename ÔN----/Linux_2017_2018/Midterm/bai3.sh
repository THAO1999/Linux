#!/bin/bash
echo "Giai phuong trinh ax^2 + bx + c: "
read -p "Nhap a: " a
read -p "Nhap b: " b
read -p "Nhap c: " c

delta=$(echo "$b^2-4*$a*$c"|bc)

if [ $delta -lt 0 ]
then
	echo "Phuong trinh vo nghiem."
elif [ $delta -eq 0 ]
then
	x=$(echo "scale=2; -$b2/(2*$a)"|bc)
	echo "PT co hai nghiem kep la $x."
else
	x1=$(echo "scale=2; -($b+sqrt($delta))/(2*$a)"|bc)
	x2=$(echo "scale=2; -($b-sqrt($delta))/(2*$a)"|bc)
	echo "nghiem x1 = $x1"
	echo "nghiem x2 = $x2"
fi
exit 0
