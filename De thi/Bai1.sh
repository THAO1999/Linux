#!/bin/bash
chooseThree() {
    read -a array
    str=''
    kc=' '
    count=0
    for i in ${array[@]}; do
        ok=0
        if [ $i -eq 1 ]; then
            ok=1
        fi
        for ((j = 2; j < i; j++)); do
            chiaDu=$(($i % $j))
            if [ $chiaDu -eq 0 ]; then
                ok=1
            fi
        done
        if [ $ok -eq 0 ]; then
            str=$str$kc$i
        fi
    done
    dialog --title "Bai 1" --backtitle "Linux" --infobox " số nguyên tố trong mảng: $str" 7 50
}

dialog --title "Đề thi cuối kì" \
    --menu "Vui lòng nhập lựa chọn:" 15 120 5 \
    1 "Hiển thị cac tiến trình đang hoạt động trong hệ thống" \
    2 "In ngày tháng năm hiện tại của hệ thống" \
    3 "Nhập vào một mảng gồm n số nguyên? In ra các số nguyên tố trong mảng đó" \
    4 "thoát khỏi menu" 2>bai1.txt

menuitem=$(cat bai1.txt)
opt=$?
case $menuitem in
1) echo $(ps) ;;
2) echo $(date) ;;
3) chooseThree ;;
4) exit ;;
esac
