# Check for Palindrome Number

echo "Enter A Number	:	"
read num
reverse=0
temp=0
while [ $num -ne 0 ]
do 
	reverse=`expr temp \* 10`
	temp=`expr num \* 10`
	reverse=`expr temp
	num=`expr $num / 10`
done

echo $reverse



