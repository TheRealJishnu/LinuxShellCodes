echo "Enter A Numvber "
read num
flag=0
i=0
while [ $i -ne $num ]
do
	try=`expr $i \* $i`
	if [ $try -eq $num ]
	then
		echo "Root is " $i
		flag=1
		break
	fi
	i=`expr $i + 1`
done
if [ $flag -eq 0 ]
then
	echo "Number is Not Perfect Square"
fi

