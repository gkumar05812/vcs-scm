#!/bin/bash

# Define your AWS region and instance details
REGION="us-east-1"
INSTANCE_TYPE="t2.micro"
AMI_ID="ami-xxxxxxxxxxxxxxxxx"  # Replace with your desired AMI ID
KEY_PAIR_NAME="your-key-pair-name"  # Replace with your key pair name
SECURITY_GROUP_IDS="sg-xxxxxxxxxxxxxx"  # Replace with your security group IDs
SUBNET_ID="subnet-xxxxxxxxxxxxxx"  # Replace with your subnet ID
INSTANCE_NAME="MyEC2Instance"  # Replace with your desired instance name

# Launch the EC2 instance
aws ec2 run-instances \
  --region $REGION \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_PAIR_NAME \
  --security-group-ids $SECURITY_GROUP_IDS \
  --subnet-id $SUBNET_ID \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]"

# Print a message
echo "EC2 instance $INSTANCE_NAME created!"
