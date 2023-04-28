#!/data/data/com.termux/files/usr/bin/bash


echo "ExposeMi"
echo "git: https://github.com/AKPR2007/ExposeMi/"

echo "Updating"
yes | pkg update

echo "Upgrading"
yes | pkg upgrade

echo "Finishing Update & Upgrade session"
yes | apt update
yes | apt upgrade

echo "Installing Python"
yes | pkg install python

echo "Installing Pip"
yes | pkg install python-pip

echo "Installing CoreUtils"
yes | pkg install coreutils

echo "Installing GnuPG"
yes | pkg install gnupg

echo "Installing Wget"
yes | pkg install wget

echo "Installing Termux:API"
yes | pkg install termux-api

echo "Adding modified ADB sources repository & corresponding public gpg key"
if [ ! -f "$PREFIX/etc/apt/sources.list.d/termux-adb.list" ]; then
  mkdir -p $PREFIX/etc/apt/sources.list.d
  echo -e "deb https://nohajc.github.io termux extras" > $PREFIX/etc/apt/sources.list.d/termux-adb.list
  wget -qP $PREFIX/etc/apt/trusted.gpg.d https://nohajc.github.io/nohajc.gpg
else
  echo "repository already found skipping this step"
fi

echo "Updating"
yes | pkg update

echo "Upgrading"
yes | pkg upgrade

echo "Finishing Update & Upgrade session"
yes | apt update
yes | apt upgrade

echo "Install modified ADB for Termux"
yes | pkg install termux-adb
yes | apt install termux-adb

echo "Installing Python Requirements"
pip install requirements.txt

clear
echo "Initialization done. You may now run the program"
