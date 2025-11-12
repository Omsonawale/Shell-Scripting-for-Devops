#!/bin/bash


echo "Enter user"
read username
echo "$username"

sudo useradd -m $username
echo "User added"
