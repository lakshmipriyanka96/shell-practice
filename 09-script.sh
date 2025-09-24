#!/bin/bash
USERID=$(id -u)
if [ "$USERID" -ne 0 ]; then
  echo "Please run as root"
  fi
  dnf install mysql -y
  if [ $? -ne 0 ]; then
    echo "MySQL installation failed"
    else
        echo "MySQL installed successfully"
    fi