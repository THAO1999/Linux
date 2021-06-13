BEGIN {}
{
	if(NR > 1 && $5 < 100){
		print $10, $5
	}
}
END {}
