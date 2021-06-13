BEGIN {i=0; print "Kich thuoc TB"}
{
	if(NR > 1){
		i=$5+i
}
}
END {print i/NR}
