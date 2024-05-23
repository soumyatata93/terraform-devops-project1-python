#! /bin/bash
# shellcheck disable=SC2164
cd /home/ec2-user
yes | sudo yum update
yes | sudo yum install git
yes | sudo yum install python3 python3-pip
git clone https://github.com/soumyatata93/python-mysql-terraform-devops-project1.git
sleep 20
cd python-mysql-terraform-devops-project1
pip3 install -r requirements.txt
echo 'Waiting for 30 seconds before running the app.py'
echo "{
    \"db_host\": \"${db_host}\"
}" > app_config.json
setsid python3 -u app.py &
sleep 30