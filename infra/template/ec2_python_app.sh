#! /bin/bash
# shellcheck disable=SC2164
cd /home/ubuntu
yes | sudo apt update
yes | sudo apt install python3 python3-pip
git clone https://github.com/soumyatata93/python-mysql-terraform-devops-project1.git
sleep 20
cd python-mysql-terraform-devops-project1
pip3 install -r requirements.txt
echo 'Waiting for 30 seconds before running the app.py'
setsid python3 -u app.py &
sleep 30