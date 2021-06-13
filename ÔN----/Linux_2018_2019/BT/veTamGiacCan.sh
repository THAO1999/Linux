#!/bin/sh
echo "Chuong trinh ve hinh tam gia can dat"
height=$1
ktrang=$1
for ((i=1;i<=height;i++))
do
          for ((kt=ktrang; kt>=1; kt--))
          do
                   echo -n " "
          done

          for ((j=1; j<=i; j++))
          do
                   echo -n "* "
          done
          ktrang=$(($ktrang-1))
          echo ""       
done
echo "The end"

exit 0

##Ve hinh tam giac can.
