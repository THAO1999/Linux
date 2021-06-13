
BEGIN{
count=0
}
{
   if($2=="Nu"){
       count+=1
   }
}
END{
print "Số sinh viên là nữ:  " count
}