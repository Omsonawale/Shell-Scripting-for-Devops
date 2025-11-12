#!/bin/bash 

# Iwe want to check some condition is true or not

echo "To check jetha is loyal or not "
#name="babita"
echo "Enter bhabi name : "
read username
# read -p "Enter name" username

echo "You Enter name of bhabi $username"

if [[ $username == "dayabhabi" ]];\

#if [[ $username == $name ]];
then
	echo "jetha is loyal"
else
	echo "jetha is not loyal"
fi

