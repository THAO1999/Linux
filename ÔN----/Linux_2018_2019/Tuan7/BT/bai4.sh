#!/bin/bash
function1(){
pwd
}
function2() {
ls
}
function3() {
ps
}
function4() {
for file in `ls *.doc`
do
	mv $file ${file/.doc/.txt}
done
}
function5() {
ls abc*
}
function6() {
ls | grep -E '.*[0-9].*'
ls *[0-9]*
}
function7() {
for file in `ls *.txt`
do
	mv "$file" "${file%txt}doc"
done
}
function8() {
echo "    MENU"
echo "1. Hien thi thu muc hien hanh."
echo "2. Hien thi noi dung cua thu muc hien hanh."
echo "3. Hien thi cac tien trinh dang hoat dong."
echo "4. Doi ten cac file .doc sang .txt trong thu muc hien hanh."
echo "5. Hien thi cac tap tin co ten bat dau la abc."
echo "6. Hien thi cac dong co chua chu so trong thu muc hien hanh."
echo "7. Doi ten file .txt thanh .doc"
echo "0. Thoat chuong trinh."
}
while true
do
	function8
	read -p "Chon chuc nang: " n
	case $n
	in
		1) function1;;
		2) function2;;
		3) function3;;
		4) function4;;
		5) function5;;
		6) function6;;
		7) function7;;
		8) function8;;
		0) echo "Good Bye..."; break;;
	esac
done
	
