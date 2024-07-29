#!/bin/bash

sudo apt update
sudo apt install -y openjdk-21-jdk

pwd

pip install -r /workspaces/uc15/requirements.txt
ansible-galaxy collection install ansible.eda

# Set ansible port 5000 to public
# WARNING: This is potentially dangerous as anyone with the codespace URL + port
# Can send events to Ansible
# TODO: Discuss whether we should user to do this
# manually with docs so they understand the risks posed.
#gh codespace ports visibility 5000:public -c $CODESPACE_NAME