#!/usr/bin/bash
read -s -p "Enter terminal password: " password
echo
sed "/s/admin/$password/g" loginbash.sh > login12
rm loginbash.sh
sudo chmod +x login12
sudo echo PATH=$PATH:`pwd` >> $HOME/.bashrc
sudo echo login12 >> $HOME/.bashrc
