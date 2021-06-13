

#!/bin/bash
x=` date +%H`
echo $x
if [ $x -le 12 ]; then
    echo "Chao buoi sang"
elif [ $x -le 17 ]
then
    echo "chao buoi trua"
else
    echo "chao buoi toi"
fi
