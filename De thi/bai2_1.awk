BEGIN{
     
printf "%5s %15s\n","Tên sinh viên ","Điểm tốt nghiệp "
}
{
printf "%5s %15s\n ",$1,($3+$4+$5)/3 + $6*2
}
