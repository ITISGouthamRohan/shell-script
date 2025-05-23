#!/bin/bash


USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%s)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){

    if [ $1 -ne 0 ]
    then
       echo "$2...FAILURE"
       exit 1
    else
       echo "$2...SUCCESS"   
    fi  
    # echo "Exit status: $1"
    # echo "what are you doing: $2"
}

if [ $USERID -ne 0 ]
then
 echo "Please run this script with root access."
 exit 1 # manually exit if error comes.
else
 echo "You are super user."
fi

dnf install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MYSQL"

dnf install git -y &>>$LOGFILE

VALIDATE $? "Installing GIT"
