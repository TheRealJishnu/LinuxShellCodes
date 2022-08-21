echo "Enter A Number To Check"
read a
b=`expr $a % 2`
if [ $b -eq 1 ]
then
       	echo "Number is Odd"
else
       	echo "Number is Even"
fi
