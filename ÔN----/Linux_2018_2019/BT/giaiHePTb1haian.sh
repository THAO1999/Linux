hpt(){
          D=$(echo "scale=3; $1 * $5 - $2 * $4" | bc)
          Dx=$(echo "scale=3; $3 * $5 - $2 * $6" | bc)
          Dy=$(echo "scale=3; $1 * $6 - $3 * $4" | bc)
          if [ $D -ne 0 ];then
                   x1=$(echo "scale=3; $Dx/$D" | bc)
                   x2=$(echo "scale=3; $Dy/$D" | bc)
                   echo "Phuong trinh co nghiem duy nhat: x = ($x1,$x2)."
          elif [ $D -eq 0 ] && [ $Dx -eq 0 ] && [ $Dy -eq 0 ];then
                   echo "Phuong trinh vo so nghiem"
          else
                   echo "Phuong trinh vo nghiem"
          fi
}

hpt $1 $2 $3 $4 $5 $6

##Giai he phuong trinh bac nhat 2 an, tham so truyen vao tu commend line.
