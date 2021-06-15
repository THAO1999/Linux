BEGIN{
    a=0
}
{
    if($1 != "total"){
	t1=substr($1,0,1)
	t2=substr($1,2,length($1))
	h=substr(t2,1,3)
	if(h == "rwx" || h == "xr" || h =="x"){
	    a+=1
	}

    }
}
END{
	print "Tep tin kich thuoc > 100 la:"
    for(i in file)
	printf i ", "
    print ""
    print "So tep quyen so huu rwxr-xr-x la " a
    
}
