#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root / with sudo" 
   exit 1
fi
apt update --yes
apt dist-upgrade --yes
apt upgrade --yes
apt install --yes git python3 python3-pip python3-dev libpython-dev python3-opencv libqtgui4 libqt4-test libgstreamer1.0-0 libjpeg62 libjpeg62-turbo-dev libmbedtls12 libmbedtls-dev screen
pip3 install  http_parser
git clone https://github.com/Synss/python-mbedtls
cd python-mbedtls
pip3 install -r requirements.txt
python3 ./setup.py install
exit N
