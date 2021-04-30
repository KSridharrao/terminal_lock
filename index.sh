#!/usr/bin/bash
read -s -p "Enter your password: " password
sed "/s/admin/$password/g" loginbash.sh > login
rm loginbash.sh
chmod +x login
echo PATH=$PATH:`pwd` >> $HOME/.bashrc
echo login >> $HOME/.bashrc
