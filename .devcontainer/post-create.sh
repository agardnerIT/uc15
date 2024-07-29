#!/bin/bash

sudo apt update
sudo apt install -y openjdk-21-jdk

pip install -r /$CODESPACE_VSCODE_FOLDER/requirements.txt
ansible-galaxy collection install ansible.eda