BEGIN {print "Sinh vien o Ha Noi"}
{if(NR > 2 && $3 == "HaNoi"){ print $1}}
END {}
