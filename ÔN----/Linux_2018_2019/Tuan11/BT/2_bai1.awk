BEGIN {printf "Noi dung cua cac dong: \n"}
{if(NR % 2 != 0){print $1 $2 $3}}
END {print "Tong so dong la : ", NR}
