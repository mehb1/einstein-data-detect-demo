sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p data -e detect.demo
sfdx login:functions:jwt --clientid 3MVG9CEn_O3jvv0zQGZ3RC8AeiKOvTHGF1AyKTPEhceKFjU7hrwn1JO3h.JnCWqOUo.ZQ9iGALbY1Fy_taX3y --username deploybot@dxhub.org --keyfile /app/tmp/server.key
sf package install -w 20 -r -p 04t5e000000aVeP
sf project deploy start
sf demoutil user password set -p salesforce1 -g User -l User
sf automig load --inputdir ./data
sf org open -p /lightning/n/datadetect__Home
