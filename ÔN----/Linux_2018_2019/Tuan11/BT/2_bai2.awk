BEGIN {print "Bai tap 2:"; i=1}
{	if(NR = 1){array[i-1]=$3}
	if(NR > 1){if($3 != array[i-1]){array[i]=$3, i++}}
	
}
END {print "Tong so Sinh vien la: ", NR}
