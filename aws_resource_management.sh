#!/bin/bash

###########################
# Author : sumit
# Date : 29/06/2024
# Version : 1
#
# This script will report the AWS resource usage
#
#################################


set -x

Output="/home/ubuntu/sumit/shell_scripting_project/resourceTracker.txt"

# List the S3 buckets and append to the output file
aws s3 ls >> "$Output"

# List AWS EC2 instances and append to the output fileaws ec2 describe

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> "$Output"

# List AWS Lambda functions and append to the output file
aws lambda list-functions >> "$Output"

# List IAM users and append to the output file
aws iam list-users >> "$Output"
