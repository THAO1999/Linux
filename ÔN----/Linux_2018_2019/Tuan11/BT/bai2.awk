BEGIN {print "Ho  cua cac hoc sinh: "}
{if(NR > 2){print substr($1,0,"_")}}
END {print "HET"}
