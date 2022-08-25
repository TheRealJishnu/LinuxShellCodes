# Check for Palindrome Number

echo "Enter A Number	:	"
read num
show=`expr $num`
reverse=0
# rem=0
while [ $num -gt 0 ]
do 
	reverse=`expr $reverse \* 10`
	rem=`expr $num % 10`
	reverse=`expr $reverse + $rem`

	num=`expr $num / 10`
done

# echo "Reverse is " $reverse
if [ $show -eq $reverse ]
then
	echo $show " is a palindrome number"
else
	echo $show " is not a palindrome number"
fi
