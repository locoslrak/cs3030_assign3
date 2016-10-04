NR>1{
	year=substr($5,length($5) - 3)
	if (year > 1899)
		print $2
}
