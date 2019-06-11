#!/bin/sh
clear

echo "--------------------------------------------------------"

#remove the output file if already exists
if [ -f outputfile.txt ];then
 rm -rf ./outputfile.txt
 echo "Output file already exists.Deleted the output file"
fi

##Iterate through the file line by line
cat ./students_20190610.config | while read line 
do

 rollno=`echo $line | cut -d"|" -f1 `
 name=`echo $line | cut -d"|" -f2`
 joiningyear=`echo $line | cut -d"|" -f3`
 
 echo "My student is $name.His rollno is $rollno and his passout year is $joiningyear" >> outputfile.txt
 
done
