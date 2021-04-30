#!/usr/bin/bash
read -s -p "Enter your password: " password
echo
sed "/s/admin/$password/g" loginbash.sh > login12
rm loginbash.sh
chmod +x login12
echo PATH=$PATH:`pwd` >> $HOME/.bashrc
echo login12 >> $HOME/.bashrc
