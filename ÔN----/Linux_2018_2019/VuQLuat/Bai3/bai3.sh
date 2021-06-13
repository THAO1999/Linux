#!/bin/bash
sed "/^$/d" <bai3.txt >out1.txt
sed 's/\*/==/g' <bai3.txt >out2.txt
sed -n '/.*\(\/94\).*/p' <bai3.txt >out3.txt
sed -n '/.*\(HaNoi\).*/p' <bai3.txt >out4.txt
sed 's/Nguyen/Dao/g' <bai3.txt >out5.txt
sed '4i "Vu Quang Luat"' <bai3.txt >out6.txt
