#!/bin/bash
i=1
for((i=1; i<5; i++))
do
	touch bai7file$i.txt
	echo "Toi la sinh vien $i" >> bai7file$i.txt
done
