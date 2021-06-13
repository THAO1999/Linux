#!/bin/bash
echo "xin moi chon hanh dong"
read x;
case $x
in 
1) echo "Xem dung luong su dung cua may tinh"
	free
	exit;;
2) echo "Xem noi dung thu muc hien hanh"
	ls
	exit;;
3) echo "Xem cac tien trinh dang chay tren may tinh duoi dang cay"
	pstree
	exit;;
4) echo "Xem ten va nguoi dung dang nhap he thong"
	whoami
	exit;;
esac
