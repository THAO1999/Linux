BEGIN{
print "--Ho--"
}
{
print substr($1,0,index($1,"_")-1)
}
