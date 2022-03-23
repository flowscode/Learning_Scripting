#!/usr/bin/env bash


# # ECHO COMMAND
# echo Hello!
#
# # VARIABLES
# NAME="Josh"
# BADNAME="Rob"
# # echo "My name is ${NAME}"
# echo "My name is ${NAME}"
#
# # USER INPUT
# echo "What's your name? I hope it's not ${BADNAME}... "
# read -p "Enter Name: " USERNAME
# USERNAMENEW=${USERNAME,,}
# USERNAMENEW=${USERNAMENEW^}
#
# # IF STATEMENT
# if [ "${USERNAMENEW}" == "${BADNAME}" ]
# then
#   echo "I can't belive your name is ${USERNAMENEW}"
# elif [[ "${USERNAMENEW}" == "" ]];
# then
#   echo "Your name can't be nothing, makes no sense"
# else
#   echo "Hello ${USERNAMENEW}, nice to meet you!"
#   echo "At least your name isn't ${BADNAME}"
# fi

#COMPARISON
NUM1=10
NUM2=5

if [[ "${NUM1}" -gt "${NUM2}"  ]]; then
  echo "${NUM1} is greater than ${NUM2}"
else
  echo "${NUM1} is less than ${NUM2}"
fi
