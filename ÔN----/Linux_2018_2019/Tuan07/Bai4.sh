#!/bin/bash
function1()
{
	pwd
}
function2()
{
	ls 
}
function3()
{
	ps
}
function4()
{
	for file in *.txt
	do
		mv $file ${file/.txt./doc}
		echo $file
	done
}
function5()
{
	ls $1/abc*
}
function6()
{
	ls $1 | grep -E '[0-9]+'
}

amenu()
{
	echo "1) Hien thi thu muc dang hien hanh"
	echo "2) Hien thi noi dung cua thu muc dang hien hanh"
	echo "3) Hien thi tat ca tien trinh dang hoat dong"
	echo "4) Doi ten tep tin co duoi .doc sang duoi .txt"
	echo "5) Tim va hien thi cac tep tin bat dau bang abc"
	echo "6) Tim kiem cac tep tin co chua chu so"
	echo "7) Thoat khoi menu"
}

while true
do
	echo "Nhap vao lua chon: "
	read n
	case $n
	in
	1) function1;;
		#exit;;
	2) function2;;
		#exit;;
	3) function3;;
		#exit;;
	4) function4;;
		#exit;;
	5) function5 /home/linhhm/Desktop/Linux/Tuan07;;
		#exit;;
	6) function6 /home/linhhm/Desktop/Linux/Tuan07;;
		#exit;;
	7)break;;
	esac
done

