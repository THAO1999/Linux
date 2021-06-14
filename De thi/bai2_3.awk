BEGIN{
    count=0
    max=1
}

    #tinh điểm dự thi của từng thi sinh
    function diemUT(){
        return ($3+$4+$5)/3 + $6*2
    }
    # lây thông tin thí sinh
    function getInfo(){
        return $1
    }
    # tìm max
    function findMax(){
        for(i=1;i<=length(diem);i++){
       if(diem[i]>max){
           max=diem[i]
       }
    }
      }
      # lấy ra tất cả sv có điểm dự thi lớn nhất
    function findStudent(){
        c=0
        for(i=1;i<=length(diem);i++){
       if(diem[i]==max){
         student[c]=info[i]
         c+=1
       }
    }
    }
{
    count+=1
    #lưu điểm dự thi
    diem[count]=diemUT()
    # lưu thông tin sv 
    info[count]=getInfo()
}

END{
    findMax()
    findStudent()
    # in ra tất cả sinh viên có điểm dự thi lớn nhất
      for(i=0;i<length(student);i++){
        print student[i]
    }
# print "Diem ly lon nhat = "$maximum }' bai1.txt
}