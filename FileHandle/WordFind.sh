echo "Enter a File Name : "
read filename
echo "Enter a word : "
read wd
grep -i $wd $filename
