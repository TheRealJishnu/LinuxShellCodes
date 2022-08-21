i=1
t=0
echo "Enter A Number To Check"
read n
while [ $i -lt $n ]
do
	a=`expr $n % $i`
	if [ $a -eq 0 ]
	then
		t=`expr $t + $i`
	fi
	i=`expr $i + 1`
done
if [ $t -eq $n ]
then
	echo "Number is Perfect"
else
	echo "Number is Not Perfect"
fi
