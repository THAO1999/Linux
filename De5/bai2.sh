#!/bin/bash
dialog  --inputbox  "Please enter something."  10 50 
    2 > file.txt
x=`cat file.txt`
echo $x