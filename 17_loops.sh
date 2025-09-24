#!/bin/bash
USERID=$(id -u) 
R="e\[31m"
G="e\[32m"
Y="e\[33m"
N="e\[0m"

LOGS_FOLDER=/var/log/shell-scripting
SCRIPT_NAME=$(echo $0| cut -d "." -f1)
LOGS_FILE=$LOGS_FOLDER/$SCRIPT_NAME.log

mkdir -p $LOGS_FOLDER
echo "Script started to execute $(date)" |tee -a $LOGS_FILE
if [ $USERID -ne 0 ]; then
echo "ERROR:: please run this script with sudo or as root user" |tee -a $LOGS_FILE
exit 1
fi
validate(){
if [$1 -ne 0]; then
echo -e "installing $2 package ...$R failure $N" |tee -a $LOGS_FILE
else
echo -e "installing $2 package ...$G success $N" |tee -a $LOGS_FILE
fi  
}

for package in $@
do
dnf list installed packages &>> $LOGS_FILE
if [ $? -ne 0 ]; then
dnf install $package -y &>> $LOGS_FILE
validate $? $package
else
echo -e "$Y $package is already installed $N" |tee -a $LOGS_FILE
fi  
done
echo "Script ended to execute $(date)" |tee -a $LOGS_FILE   

