echo "Enter File Name : "
read myfile
ch=`cat $myfile | wc -c`
wd=`cat $myfile | wc -w`
l=`grep -c "." $myfile`
echo $ch
echo $wd
echo $l
