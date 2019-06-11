#!/bin/sh

for line in `cat ./students_20190610.config`
do
 sName=`echo $line | cut -d"|" -f2`
 soutputName=${sName}_AWS_Associate
 echo $soutputName >> out.txt
done
