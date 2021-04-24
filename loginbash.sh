#!/bin/bash
echo -n  "Enter password:"
read -s password
echo
if [[ $password == "sridhar" ]]
then
figlet Welcome
else
echo "You are not an authorised user"
figlet "Get Out" 
kill $(pgrep terminal)
fi
