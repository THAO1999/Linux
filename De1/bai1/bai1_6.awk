
#tim max
function findMax(){
    if($4 > max){
        max=tb
        name=$1
    }
}
BEGIN{
name="hi"
max=1
}
{
     findMax()
}
END{
print "Sinh viên có điểm lí lớn nhất: " name
}