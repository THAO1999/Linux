# tính trung bình
function tinhTrungBinh(){
  return ($3 + $4 +$5)/3
}
#tim max
function findMax(){
    if(tb < min){
        min=tb
        name=$1
    }
}
BEGIN{
name="hi"
min=100000
}
{
    tb=tinhTrungBinh()
     findMax()
}
END{
print "sinh viên có điểm trung bình thấp nhất: " name
}