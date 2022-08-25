i=2
echo "Enter A Number "
read num
lim=`expr $num / 2`
lim=`expr $lim + 1`
flag=0
while [ $i -ne $lim ]
do
	rem=`expr $num % $i`
	if [ $rem -eq 0 ]
	then
		flag=1
		break
	fi
	i=`expr $i + 1`
done

if [ $flag -eq 0 ]
then
	echo "Number is Prime"
else
	echo "Number is Not Prime"
fi
