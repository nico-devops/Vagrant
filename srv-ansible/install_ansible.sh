#!/bin/bash
# install ansible
sudo apt update -qq
sudo apt install -y -qq software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt update -qq
sudo apt install -y -qq ansible
# install pip and ansible autocomplete
sudo apt install -y -qq python3-pip
sudo apt install -y -qq python3-argcomplete
python3 -m pip install --user argcomplete
sudo activate-global-python-argcomplete3 --user