#!/bin/bash
sed 's/^$/*************/g' <bai3.txt >out1.txt
sed -n '/.*\(Tran\).*/p' <bai3.txt >out2.txt
sed '10i VuQuangLuat' <bai3.txt >out3.txt
sed '1,5d' <bai3.txt >out4.txt
