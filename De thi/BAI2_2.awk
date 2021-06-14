BEGIN{
print"Thí sinh có điểm ưu tiên trong danh sách"
}
{
if($6==1){
    print $1
}
}
END{

}
