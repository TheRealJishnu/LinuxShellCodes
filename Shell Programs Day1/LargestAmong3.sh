echo "Enter First Number"
read a
echo "Enter Second Number"
read b
echo "Enter Third Number"
read c
if [ $a -gt $b ]
then
	if [ $a -gt $c ]
	then
		echo $a " is Largest"
	else
		echo $c " is Largest"
	fi
else
	if [ $b -gt $c ]
	then
		echo $b " is The Largest"
	else
		echo $c " is The Largest"
	fi
fi

