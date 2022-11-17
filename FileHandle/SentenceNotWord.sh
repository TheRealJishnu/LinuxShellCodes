echo "Enter a File name: "
read myfile
echo “Enter the word:”
read pattern
ch=`cat $myfile | wc -c`
wd=`cat $myfile | wc -w`
l=`grep -c "." $myfile`
g=`grep -v $pattern $myfile`
echo "Number of character in $myfile - $ch."
echo "Number of word  in $myfile - $wd."
echo "Number of line in $myfile - $l."
echo "'$pattern' is Not Present at These Line : "
echo $g
