#!/bin/bash
set -x
sudo apt update
sudo apt install -y ansible

ansible --version

sudo apt install ssh
sudo systemctl enable sshd

# sed -i /etc/sudoers -re 's/^%sudo.*/%sudo ALL=(ALL:ALL) NOPASSWD: ALL/g'
# sed -i /etc/sudoers -re 's/^root.*/root ALL=(ALL:ALL) NOPASSWD: ALL/g'