#!/usr/bin/bash
read -s -p "Enter terminal password: " password
echo
sed "s/admin/$password/g" loginbash.sh > login12
rm loginbash.sh
sudo chmod +x login12
sudo mv login12 /usr/bin/
sudo echo login12 >> $HOME/.bashrc
sudo rm -r ../terminal_lock
