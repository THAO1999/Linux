BEGIN {printf "nhap xau, Ctrl + D de thoat:\n"}
{
	printf "Do dai: %d\n", length($2)
}
END {}
