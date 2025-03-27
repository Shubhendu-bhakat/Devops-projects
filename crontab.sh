#!/bin/bash
##########
#author :Shubhendu Bhakat
#Date : 26-03-2025
#
#Version : v1
#This script report the AWS resource usage
############

#AWS EC2
#AWS S3
#AWS Lambda
#AWS IAM Users
set -x
#list EC2 instace
aws ec2 describe-instances | jq '.Reservations[].Instances[] | {InstanceId, OwnerId, SubnetId, SecurityGroups: [.SecurityGroups[].GroupId], Tags: [.Tags[] | {Key, Value}]}'




#list lambda
#echo "printing the lambda function details"
aws lambda list-functions


#list IAM users
#echo "printing the IAM users "
aws iam list-users
