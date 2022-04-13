#!/bin/bash

USERNAME="$2"
PASSWORD="$3"

addUser ()
{
	if [ -z "$PASSWORD" ]
	then
		PASSWORD="$(openssl rand -base64 32)"
	fi

	#Add a user account with the name passed in as first parameter - "&&" to check the previous line completed successfully before doing the next line
	sudo useradd $USERNAME -m && \
		echo -e "$PASSWORD\n$PASSWORD" | sudo passwd $USERNAME && \
		echo "NEW USER '$USERNAME' HAS BEEN ADDED and PASSWORD HAS BEEN SET SUCCESSFULLY :)"

	#Write username and password to file
	rm credentials.txt
	touch credentials.txt
	echo "WELCOME TO OUR COMPANY, here are your credentials" >> credentials.txt
	echo "Username: $USERNAME" >> credentials.txt
	echo "Password: $PASSWORD" >> credentials.txt

	#Enter user email
	read -p "Enter email address: " EMAIL
	echo "You entered: $EMAIL"

	#Confirm email
	read -p "Continue? (Y/N): " confirm 

	if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]
	then       	
			#Send email to user
			mail -A credentials.txt -s "User Credentials" $EMAIL < /dev/null
			rm credentials.txt
		#add company rules to user's directory
		sudo cp "/home/joshuadawkins/Documents/BASH_SCRIPTS/company_rules.txt" "/home/$USERNAME"
		sudo -u $USERNAME chsh -s /bin/bash
	else		
		rm credentials.txt
		sudo userdel -r $USERNAME && echo "User $USERNAME has been deleted" && exit 1
	fi
}

deleteUser ()
{
	sudo userdel -r $USERNAME && \
	echo "$USERNAME has been deleted successfully"
}

if [ "$1" == "add" ]
then
  addUser
elif [ "$1" == "delete" ]
then
  deleteUser
else
  echo "You must enter add or delete as first argument"
fi
