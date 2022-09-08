echo "Enter Size of Array: "
read n
echo "Enter Array Elements : "
for(( i=0; i<$n; i++))
do
	read arr[$i]
done

m=`expr $n - 1`
for(( i=0; i<m ; i++))
do
	z=`expr $n - $i - 1` 
	for(( j=0; j<z; j++ ))
	do
		index=`expr $j + 1`
		if( ${arr[ $j ]} -gt ${arr[$index]} )
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$index]}
			arr[$index]=$temp
		fi
	done
done

echo "Sorted Array: "
for((i=0; i<$n; i++))
do
	echo $arr[$i] " "
done
	
	 
