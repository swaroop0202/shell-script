#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
  then
       echo "you are not a super user"
  else
       echo "you are a super user"
fi          