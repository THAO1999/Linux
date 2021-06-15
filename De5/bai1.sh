#!/bin/bash
function luachon1(){
for((i=1; i < $42; i++)); 
		do
			temp=`expr i % 2`
			if [ $temp -eq 0 ]
			then
	      		sudo touch file$i.txt
				fi
	 	done
}
function luachon2(){
	wc -l /etc/passwd
	awk 'BEGIN {max=0;str=""} {if(length($0)>max){max=length($0);str=$0}} END {print str}' /etc/passwd
}
function luachon3(){
	for i in `ls ~/mnt/var/home/student/*.sh`
		do
			mv "$i" "${i%.sh}.doc"
		done
}


while true
do
	echo "1. Tao n tep tin "
	echo "2. Đếm xem có bao nhiêu dòng nằm trong tệp tin /etc/passwd? In ra dòng có độ
dài lớn nhất "
	echo "3. Đổi tên tất cả các tệp tin có đuôi .doc sang đuôi .txt trong thư mục 
/home/student"
	echo "4. Thoat "
	read lc
	case $lc in
		1) luachon1;;
		2) luachon2;;
		3) luachon3;;
		4) break;;
	esac	
	
done
