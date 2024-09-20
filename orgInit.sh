# Create the demo org
sfdx shane:org:create -f config/project-scratch-def.json -d 5 -s --wait 60 --userprefix data -o detect.demo

# Install Einstein Data Detect
sfdx force:package:install -w 20 -r -p 04t5e000000aVeP

# Push the metadata into the new scratch org.
sfdx force:source:push

# Set the default password.
sfdx shane:user:password:set -g User -l User -p salesforce1

# Import the data required by the demo
sfdx automig:load --inputdir ./data

# Open the org.
sfdx force:org:open -p /lightning/n/datadetect__Home