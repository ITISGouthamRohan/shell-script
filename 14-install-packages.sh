#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "please run this script with root access"
   exit 1 # manually exit if error comes.
else
   echo "You are super user."
fi 

echo "All Packages: $@"

for i in $@
do
  echo "package to install: $i"
done