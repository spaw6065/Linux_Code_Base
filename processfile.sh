#!/bin/sh

if [ -f ./outputfile.txt ];then
 echo "File already exists.Removing the file from current directory"
 rm ./outputfile.txt
fi

echo "output written to file : outputfile.txt"

##RollNo 1
rollno1=`head -1 ./students_20190610.config | cut -d"|" -f1`
name1=`head -1 ./students_20190610.config | cut -d"|" -f2`
passoutyear1=`head -1 ./students_20190610.config | cut -d"|" -f3`
echo "My first student is $name1.His roll no is $rollno1 and his passing year is $passoutyear1" >> outputfile.txt

##RollNo 2
rollno2=`head -2 ./students_20190610.config | tail -1 | cut -d"|" -f1`
name2=`head -2 ./students_20190610.config |tail -1 | cut -d"|" -f2`
passoutyear2=`head -2 ./students_20190610.config | tail -1 | cut -d"|" -f3`
echo "My second student is $name2.His roll no is $rollno2 and his passing year is $passoutyear2" >> outputfile.txt

##RollNo 3
rollno3=`tail -1 ./students_20190610.config | cut -d"|" -f1`
name3=`tail -1 ./students_20190610.config | cut -d"|" -f2`
passoutyear3=`tail -1 ./students_20190610.config | cut -d"|" -f3`
echo "My third student is $name3.Her roll no is $rollno3 and her passing year is $passoutyear3" >> outputfile.txt
