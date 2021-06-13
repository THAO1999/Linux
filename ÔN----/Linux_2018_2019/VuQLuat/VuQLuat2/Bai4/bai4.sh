#!/bin/bash
sed '/^$/d' <bai3.txt >out1.txt
sed -n '/.*\(NamDinh\).*/p' <bai3.txt >out2.txt
sed '3i VuQuangLuat' <bai3.txt >out3.txt
sed '9d' <bai3.txt >out4.txt
