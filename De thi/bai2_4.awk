BEGIN{
print"Thí sinh có điểm toán và lý lớn hơn 5 trong danh sách"
}
{
if($4>5 && $3>5){
    print $1
}

}
END{

}
