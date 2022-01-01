#!/bin/bash

clr='\033[0;33m'
clr2='\033[0;36m'
noclr='\033[0m'
PREFIX=$(echo -e "${clr}[APTDATE]${noclr} ${clr2}")

if [ "$1" == "clean" ]; then
    echo -e "$PREFIX Removing cache${noclr}"
    sudo rm -rf /var/lib/apt/lists/*
    sudo apt clean
fi


echo -e "$PREFIX Updating repositories${noclr}"
sudo apt -y update

echo -e "$PREFIX Upgrading available packages${noclr}"
sudo apt -y dist-upgrade

echo -e "$PREFIX Fixing unmet dependencies${noclr}"
sudo apt install -f -y

echo -e "$PREFIX Cleaning up...${noclr}"
sudo apt -y autoremove

echo -e "$PREFIX Done :)${noclr}"
