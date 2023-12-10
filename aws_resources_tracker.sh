#!/bin/bash
#########################
# Author: FT
# Date: 12/7/2023
# Version: V1
# ######################
#
set -x
# This script will track resources created in aws
#AWS s3
#AWS ec2
#AWS Iam Users
#AWS lambda
#
########################
#list all ec2 instances
echo "Print list of ec2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'>tracker_ec2_Id

#list all lambda functions 
echo "Print list of lambda functions"
aws lambda list-functions | jq '.Functions[].FunctionName'> tracker_Lambda_name

#Name of all iam users 
echo "Print name of iam users"
aws iam list-users | jq '.Users[].UserName'> tracker_iam_user_name

#list all s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > tracker_s3
