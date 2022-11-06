
echo "Enter Length of The Array"
read n
echo "Enter The Array : "
i=0
while [ $i -lt $n ]
do
        read arr[$i]
        i=`expr $i + 1`
done

echo "Unsorted Array : ${arr[*]} "
# SORT
for(( j = 0; j<n; j++ ))
do
        low=${arr[$j]}
        for(( k=j+1; k<n; k++)) #FIND THE LOWEST ELEMENT
        do
                if [ $low -gt ${arr[$k]} ]
                then
                        low=${arr[$k]}
                        m=$k
                fi
        done
        
        
        #Swap low and First Element
        if [ $low -lt ${arr[$j]} ]
        then
		temp=${arr[$j]}
		arr[$j]=${arr[$m]}
		arr[$m]=$temp
	fi
done

echo "Sorted Array : ${arr[*]} "
