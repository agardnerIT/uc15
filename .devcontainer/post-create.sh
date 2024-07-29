#!/bin/bash

sudo apt update
sudo apt install -y openjdk-21-jdk

pwd

pip install -r /workspaces/uc15/requirements.txt
ansible-galaxy collection install ansible.eda