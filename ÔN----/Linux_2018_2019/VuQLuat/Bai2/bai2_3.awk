BEGIN {i=0; printf "So tap tin co quyen truy cap la rwxrwxrwx la: "}
{
	if(NR > 1){
		if(substr($1,2,11) == "rwxrwxrwx" ){i++}
	}
}
END {print i}
