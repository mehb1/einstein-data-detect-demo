sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p data -e detect.demo
sfdx shane:data:file:upload -f "/proc/version" -n zeb0x01tes
sfdx shane:data:file:upload -f "/proc/version" -n zeb0x02 -c 
sf package install -w 20 -r -p 04t5e000000aVeP
sf project deploy start
sf demoutil user password set -p salesforce1 -g User -l User
sf org open -p /lightning/n/datadetect__Home
