#!/bin/bash

echo -n "Nhap n= "

read n


a=0
for ((i=0;i<n;i++))

do

	b=$(echo "$i*$i" | bc) # thử thế này xem ((b=$i*$i))

	if [ $n -eq $b ];

		then

			a=1
                        break 1

		#else

			#a=0

	fi

done

	if [ $a -eq 1 ];

		then

			echo "$n la so chinh phuong"

		else

			echo "$n la so chinh phuong"

	fi
exit 0

##Kiem tra so chinh phuong.
