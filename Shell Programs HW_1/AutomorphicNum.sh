echo "Enter A Number: "
read num
show=`expr $num`
flag=1
square=`expr $num \* $num`
while [ $num -gt 0 ]
do
	flag1=`expr $num % 10`
	flag2=`expr $square % 10`
	if [ $flag1 -ne $flag2 ]
	then
		flag=0
		break
	fi
	num=`expr $num / 10`
	square=`expr $square / 10`
done

if [ $flag -eq 0 ]
then
	echo $show "is NOT An Automorphic Number"
else
	echo $show "is An Automorphic Number"
fi
