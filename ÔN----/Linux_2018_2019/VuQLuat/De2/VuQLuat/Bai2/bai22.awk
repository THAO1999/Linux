BEGIN {}
{
{
	if(NR > 1 && $5 > 100){
	printf "%5s %5s %5s %5s %5s %5s %1s %5s \n", substr($1,0,2), substr($1,1,11), $2, $3, $5, $6, $7, $10
	}
}
}
END {}
