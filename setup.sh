#!/bin/bash

# Function to update the repository
update_repository() {
    echo "Updating repository..."
    bash update.sh
    echo "Repository updated successfully!"
}

# Main script
clear
echo
pkg install pv -y >/dev/null 2>&1
echo -e "\033[32m\033[1m{───────────────────────────────────────────────────}"
echo -e "\033[33m\033[1m   Installing All Required Packages! Please Wait..." | pv -qL 10
apt update                    
apt upgrade -y 
pkg install python -y 
pkg install cmatrix -y 
pkg install pv -y 
apt install figlet -y  
apt install ruby -y 
apt install mpv -y 
pip install lolcat 
pip install random 
pip install requests 
pkg install python2 -y 
pkg install termux-api -y 
echo -e "\033[31m\033[1m        INSTALLATION COMPLETED \033[32m[\033[36m✓\033[32m]" | pv -qL 12
echo -e "\033[33m\033[1m]────────────────────────────────────────────["
termux-setup-storage
cd $HOME/TermuX-Custom
cp login.sh $PREFIX/etc
chmod +x login.sh delete.sh setup.sh sound_effect.py banner.sh update.sh
mkdir -p $HOME/TermuX-Custom/Song 
mv Access-Granted.mp3 Jarvis2.mp3 JARVIS.mp3 sound_effect.py $HOME/TermuX-Custom/Song
rm 1
mkdir -p $HOME/TermuX-Custom/NETWORK
mv network.py $HOME/TermuX-Custom/NETWORK

# Prompt user for update
read -p "Do you want to update the repository now? (y/n): " choice
if [ "$choice" = "y" ]; then
    update_repository
fi

# Run login script
bash login.sh

