echo "lap voi while"
awk 'BEGIN {i=1; print "Ket qua"} {while (i<3){print "In dong ",$1,"lan" ,i; i++}} END {print "Het"}' test.txt
echo "lap voi for"
awk 'BEGIN {print "Ket qua"} {for (i=1;i<3;i++) print "in dong", $1, "lan thu", i} END {print "het"}' test.txt
echo "ham lengt"
awk 'BEGIN {print "Ket qua"} {print length($2)} {print toupper($2)} {print substr($2,0,4)} {print index($2,"l")}END {print "het"}' test.txt
