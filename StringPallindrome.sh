echo "Enter Length of String "
read n
echo "Enter The String "

for((i=0; i<n; i++))
do
	read arr[$i]
done

flag=0
for((i=0; i<n/2; i++))
do
	if [ "${arr[$i]}" != "${arr[$((n-i-1))]}" ]
	then
		flag=1
		break
	fi
done

if [ $flag -eq 0 ]
then
	echo "This is a pallindrome "
else
	echo "This is not a pallindrome "
fi
