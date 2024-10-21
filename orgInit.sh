# Create the demo org
sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p data -e detect.demo

# Install Einstein Data Detect
sf package install -w 20 -r -p 04t5e000000aVeP

# Push the metadata into the new scratch org.
sf project deploy start

# Set the default password.
sf demoutil user password set -p salesforce1 -g User -l User

# Import the data required by the demo
sf automig load --inputdir ./data

# Open the org.
sf org open -p /lightning/n/datadetect__Home
