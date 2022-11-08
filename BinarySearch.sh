echo "Enter the size of the array"
read n
echo "Enter the elements : "
for ((i = 0; i < n; i++))
do
    read a[$i]
done


#SEARCH
echo "Enter the element you want to search:"

read s

l=0
c=0
u=$(($n - 1))

while [ $l -le $u ]
do

    mid=$((($l + $u) / 2))

    if [ $s -eq ${a[$mid]} ]
    then
        c=1
        break
    elif [ $s -lt ${a[$mid]} ]
    then
        u=$(($mid - 1))
    else
        l=$(($mid + 1))
    fi
done

if [ $c -eq 1 ];
then
    echo "$s found at position $(($mid + 1))"
else
    echo "$s not found"
fi
