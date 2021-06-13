#!/bin/bash
dialog --title "Bai 2 đề 2 " --backtitle "linux" --inputbox "nhap vao so n " 7 50 2>file.txt
c=$?
m=$(cat file.txt)
n=$(cat file.txt)
x=''
while [ $n -gt 0 ]; do
    temp=$(expr $n % 10)
    x=$x$temp
    n=$(expr $n / 10)
done
# y=$(echo "$x" | sed 's/[^0-9]*//g')
if [ $m -eq $x ]; then
    kt=1
else
    kt=0
fi
case $c in
0) if [ $kt -eq 1 ]; then
    dialog --title "Bai 3" --backtitle "Linux" --infobox "$m la so doi xung" 7 50
else
    dialog --title "Bai 3" --backtitle "Linux" --infobox "$m khong la so doi xung" 7 50
fi ;;
1) echo "thoat" ;;
255) echo "huy" ;;
esac
