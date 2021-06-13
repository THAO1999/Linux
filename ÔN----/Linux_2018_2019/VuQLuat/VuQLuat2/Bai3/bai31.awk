BEGIN {i=0; print "So file co quyen truy cap la ..la: "}
{
	if(NR > 1){
		if(substr($1,2,11)=="rwxr-xr-x"){i++}
	}
}
END {print i}
