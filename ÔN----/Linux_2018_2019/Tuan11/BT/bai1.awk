BEGIN {print "Diem trung binh: "}
{if(NR > 2){print $1, ": ", ($5+$6+$7)/3} }
END {prinf "het"}
