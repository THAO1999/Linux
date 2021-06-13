#!/bin/bash
currentdate=`date +%H`
echo $currentdate
if [ $currentdate -lt 11 ]
then
    echo "Chao buoi sang"
elif [[ $currentdate -ge 11 && currentdate -le 14 ]]
then
    echo "Chao buoi trua"
elif [[ $currentdate -ge 17 ]]
then
   echo "Chao buoi toi"
else
    echo "Chao buoi chieu"
fi
