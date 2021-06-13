BEGIN {i=0 ; print "So tap tin co quyen truy cap cua nguoi so huu rwx la: "}
{
	if(NR > 1){
		if(substr($1,2,4) == "rwx"){i++}
		print substr($1,2,4)
	}
}
END {print i}
