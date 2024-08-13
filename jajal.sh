#!/bin/bash

# Revoke all existing authentication tokens
#echo "Revoking all existing authentication tokens..."
#gcloud auth revoke --all

# Authenticate with Google Cloud without launching a browser
echo "Authenticating with Google Cloud..."
gcloud auth login --no-launch-browser --quiet

# Prompt for project ID
read -p "Enter your Google Cloud project ID: " PROJECT_ID

# Set the project
echo "Setting project to $PROJECT_ID..."
gcloud config set project "$PROJECT_ID"


# Run rmfok.sh
echo "Running rmfok.sh..."
./rfmok.sh
