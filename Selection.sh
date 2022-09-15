echo "Enter Length of The Array"
read n
echo "Enter The Array : "
i=0
while [ $i -lt $n ]
do
        read arr[$i]
        i=`expr $i + 1`
done

# SORT
j=`expr $n - 1`
for(( j = 0; j<n; j++ ))
do
        low=${arr[$j]}
        for(( k=1; k<n; k++)) #FIND THE LOWEST ELEMENT
        do
                if [ $low -gt ${arr[$k]} ]
                then
                        low=${arr[$k]}
                        m=$k
                fi
        done
        
        

        #Swap low and First Element
        temp=${arr[$k]}
        arr[$k]=${arr[$m]}
        arr[$m]=$temp
done

echo "Sorted Array : "
for(( i=0; i<n; i++))
do
        echo ${arr[$i]} " "
done
