#!/bin/bash
USERID=$(id -u)
G='\e[32m'
R='\e[31m'
N='\e[0m' # No Color

if [ "$USERID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
  fi    
  validate() { #functions recieve input through args just like shell scripting args
if [ $1 -ne 0 ]; then
    echo -e "$R $2 installation failed $N "
    else
        echo -e "$G $2 installed successfully $N"
  fi
  }
  dnf install mysql 
  if [ $? -ne 0 ]; then
    dnf install mysql -y
    vaidate $? "mysql"
    else
      echo -e "mysql already installed $Y..skipping $N"
  fi
dnf list installed nginx
if [ $? -eq 0 ]; then
    dnf install nginx -y
    validate $? "nginx"
    else
      echo -e "nginx already installed $Y..skipping $N"
fi
dnf list installed python3
if [ $? -eq 0 ]; then
    dnf install python3 -y
    validate $? "python3"
    else
      echo -e "python3 already installed $Y..SKIPPING $N" 
  validate $? "$2"
fi
