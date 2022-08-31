echo "Enter A Nummber: "
read num
show=`expr $num`
sum=0
mul=1
while [ $num -gt 0 ]
do
	dig=`expr $num % 10`

	sum=`expr $sum + $dig`
	mul=`expr $mul * $dig`

	num=`expr $num / 10`
done

if [ $sum -eq $mul ]
then
	echo $show " is A Spy Number"
else
	echo $show " is not A Spy Number"
fi
