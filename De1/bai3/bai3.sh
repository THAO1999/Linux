#!/bin/bash
#cau 1
sed 's/^$/==========/g' bai3.txt >output1.txt

#cau 2
sed -n '/HaNoi/p' bai3.txt >output2.txt

#cau 3
sed -n '1,2 p' bai3.txt >output3.txt

#cau 4
sed '5i\ Thaotm 17000245 BG ' bai3.txt >output4.txt
sed '4i\NguyenVietTuan 14000884 BacNinh  15/08/1996  ' bai3.txt >out6.txt
