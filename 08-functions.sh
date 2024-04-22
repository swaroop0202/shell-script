#!/bin/bash

USERID=$(id -u)
VALIDATE(){
  if [ $1 -ne 0 ]
  then
  echo "$2....failure"
  exit1
  else
  echo "$2...success"
  fi
}
if [ $USERID -ne 0 ]
  then
       echo "you are not a super user"
  else
       echo "you are a super user"
fi          
dnf install mysql -y

VALIDATE $? "installing mysql"