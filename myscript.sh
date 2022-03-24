#!/usr/bin/env bash


# ECHO COMMAND
# echo Hello!
#
#
#
#
#
# # VARIABLES
# NAME="Josh"
# BADNAME="Rob"
# echo "My name is ${NAME}"
#
#
#
#
# # USER INPUT
# echo "What's your name? I hope it's not ${BADNAME}... "
# read -p "Enter Name: " USERNAME
# USERNAMENEW=${USERNAME,,}
# USERNAMENEW=${USERNAMENEW^}
#
#
#
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
#
#
#
# # # COMPARISON
# NUM1=10
# NUM2=5
#
# if [[ "${NUM1}" -gt "${NUM2}"  ]]; then
#   echo "${NUM1} is greater than ${NUM2}"
# else
#   echo "${NUM1} is less than ${NUM2}"
# fi





# # FILE
# echo "this is a test to make a file" > "test.txt"
# FILE="test.txt"
# if [[ -f "${FILE}" ]];
# then
#   echo "${FILE} is a file"
#   cat "test.txt"
#   rm "test.txt"
#   ls
# else
#   echo "${FILE} is not a file"
# fi



# # CASE STATEMENT
# read -p "Are you 25 or over? [Y/N] " ANSWER
# case "${ANSWER}" in
#   [yY] | [yY][eE][sS])
#     echo "You are allowed inside :)"
#     ;;
#   [nN] | [nN][oO])
#     echo "Sorry you cant come in bro"
#     ;;
#   *)
#     echo "Please enter y/yes or n/no"
#     ;;
# esac




# # SIMPLE FOR LOOP
# NAMES="Joe Steve Mike Lenny"
# for NAME in ${NAMES}
#   do
#     echo "Hello ${NAME}"
# done

# FOR LOOP TO RENAME FILES
# if [[ -d "playground" ]]; then
#   cd playground
#   touch 1.txt 2.txt 3.txt
#   FILES=$(ls *.txt)
#   NEW="new"
#   for FILE in ${FILES}
#     do
#       echo "Renaming ${FILE} TO ${NEW}-${FILE}"
#       mv ${FILE} ${NEW}-${FILE}
#       rm ${NEW}-${FILE} # removes files after
#   done
# else
#   echo "creating playground folder"
#   mkdir playground
#   cd playground
#   touch 1.txt 2.txt 3.txt
#   FILES=$(ls *.txt)
#   NEW="new"
#   for FILE in ${FILES}
#     do
#       echo "Renaming ${FILE} TO ${NEW}-${FILE}"
#       mv ${FILE} ${NEW}-${FILE}
#       rm ${NEW}-${FILE} # removes files after
#   done
# fi

# # WHILE LOOP - READ THROUGH A FILE LINE BY LINE
# LINE=1
# while read -r CURRENT_LINE
#   do
#     echo "${LINE}: ${CURRENT_LINE}"
#     ((LINE++))
# done < "./1.txt"
