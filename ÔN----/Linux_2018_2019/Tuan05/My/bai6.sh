#!/bin/bash
touch tailieu.txt
echo "Tuan 07: Cac toan tu trong lap trinh shell va Vong lap" >> tailieu.txt
for((i=1; i<4; i++))
do
	cat tailieu.txt >> bai6copy$i.txt
done
