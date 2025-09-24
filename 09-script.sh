#!/bin/bash
USERID=$(id -u)
if [ "$USERID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
  fi    
  validate() { #functions recieve input through args just like shell scripting args
if [ $1 -ne 0 ]; then
    echo "$2 installation failed"
    else
        echo "$2 installed successfully"
  fi
  }
  dnf install mysql -y
  validate $? "$2"
  dnf install nginx -y
  validate $? "nginx"
  dnf install python3 -y
  validate $? "python3"
