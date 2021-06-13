BEGIN{
 print "Tên sinh viên" "       " "Điểm trung bình"
}
{
print $1  "      "  ($3+$4+$5)/3
}
END{

}