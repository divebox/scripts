cd
wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
sudo dpkg -i amazon-cloudwatch-agent.deb
wget https://raw.githubusercontent.com/divebox/scripts/main/amazon-cloudwatch-agent.json
sudo mv amazon-cloudwatch-agent.json /opt/aws/amazon-cloudwatch-agent/etc/
sudo amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json

