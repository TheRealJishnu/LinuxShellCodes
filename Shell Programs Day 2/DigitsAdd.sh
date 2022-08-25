# Write a shell script to addd the digits of a number
total=0
echo "Enter A Number"
read num
while [ $num -gt 0 ]
do
	temp=`expr $num % 10`
	total=`expr $total + $temp`
	num=`expr $num / 10`
done
echo "Sum is " $total

