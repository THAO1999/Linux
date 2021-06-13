#!/bin/bash
y1(){
	pwd
}
y2(){
	ls *a*
	#hoac
	ls | grep ".*a.*"
}
y3(){
count=0
for fi in `ls`
do
	count=$(($count + 1))
done
echo "So file la $count"
}
y4() {
dir="/etc/group"
cat $dir | grep -E '.*th.*'
}
y5() {
ls /etc | grep -E '.*[a|b]+.*' > outputy5.txt
}
y6() {
if [ -f /etc/passwd ]
then
	head -n 3 /etc/passwd
else
	echo "Tep khong ton tai."
fi
}
y7() {
	count=0
	for p in `ps`
	do
		count=$(($count +1))
	done
	echo "So tien trinh la: $count"
}
y8() {
	echo "		MENU"
	echo "0. thoat"
	echo "1. hien thi thu muc lam viec hien tai"
	echo "2. hien thi file co chua chu a"
	echo "3. diem so luong tep va thu muc"
	echo "4. in ra cac dong chua xau 'th' "
	echo "5. tim kiem file co a hoac b it nhat 1 lan"
	echo "6. kiem tra 1 file ect/passwd co ton tai khong."
	echo "7. dem tong so tien trinh co trong he thong"
}

main(){
while true
do
y8
read -p "Chon chac nang: " a
case $a in
	1)
	y1;;
	2)
	y2;;
	3)
	y3;;
	4)
	y4;;
	5)
	y5;;
	6)
	y6;;
	7)
	y7;;
	0)
	echo "Good Bye..."; break;;
esac
done
}
main
