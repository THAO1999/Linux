#!/bin/sh
echo "Tuan 05: Makefile va lap trinh Shell" > tailieu.txt
for i in 1 2 3 
#for ((  i=1 ;  i <= 3 ;  i++  ))
do
    cp tailieu.txt tailieu_$i.txt   
done
