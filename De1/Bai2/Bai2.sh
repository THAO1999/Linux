#!/bin/bash
dialog --title "Bai 2" --backtitle "linux" --inputbox "nhap vao so n " 7 50 2>file.txt
c=$?
n=$(cat file.txt)
temp=$(echo "sqrt($n)" | bc)
x=$(expr $temp \* $temp)
if [ $n -eq $x ]; then
    dialog --title "Bai 2" --backtitle "Linux" --infobox "$n là số chính phương " 7 50
else
    dialog --title "Bai 2" --backtitle "Linux" --infobox "$n  không là số chính phương " 7 50
fi
