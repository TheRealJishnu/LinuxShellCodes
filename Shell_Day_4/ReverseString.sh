str=$1
len=`echo $str | wc -c`
echo "Reversed String is: "
for((i=len; i>=1; i--))
do
	c1=`echo $str | cut -c $i`
	echo -n $c1
done
echo ""
