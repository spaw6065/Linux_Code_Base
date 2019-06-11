#!/bin/sh
echo "Enter your Choice(1--> for Create file ,2 for create directory)"
read UserChoice

##if [ $UserChoice -eq 1 ];then
##  sMessage="You have selected option to create file"
##elif [ $UserChoice -eq 2 ];then
##  sMessage="You have selected option to create directory"
##else
##  sMessage="Only supported option is 1 or 2.Please renter correct choice"
##fi

case $UserChoice in 
	1) sMessage="You have selected option to create file"
	   ;;
	2) sMessage="You have selected option to create directory"
	  ;;
	*) sMessage="Only supported option is 1 or 2.Pls reenter correct choice"
          ;;
esac

echo "sMessage"

##USECASE 1: Check if file exists .If file doesnot exists then create the file

if [ $UserChoice -eq 1 ];then
echo "Enter Filename of your choice"
read sfileName
echo "Entered file name is $sfileName"

if [ -f $sfileName ];then
 echo "file $sfileName exists in the current directory"
else
 echo "file $sfileName does not exists in the current directory"
 echo "Creating file in current directory..."
 touch $sfileName
 if [ $? -eq 0 ];then
   echo "File sfileName created successfully in the current directory..."
 else
   echo "Failed to create the file...Pls check"
 fi
fi


elif [ $UserChoice -eq 2 ];then
##USECASE 2: Check if direcotry exists .If directory doesnot exists then create the directory
echo "Enter the directory name of your choice"
read sdirName
echo "Entered directory name is $sdirName"

if [ -d $sdirName ];then
 echo "$sdirName directory exists in the current directory"
else
 echo "$sdirName does not exists in the current directory"
 echo "Creating $sdirName in current directory..."
 mkdir -m777 ./${sdirName}
 if [ $? -eq 0 ];then
   echo "File $sdirName created successfully in the current directory..."
 else
   echo "Failed to create the file...Pls check"
 fi
fi

else
  echo "sMessage"
  exit
fi
