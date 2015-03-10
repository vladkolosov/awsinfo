#!/bin/bash

ec2=$(aws ec2 describe-instances --region us-east-1 --output json)

rds=$(aws rds describe-db-instances --region us-east-1 --output json)

elb=$(aws elb describe-load-balancers --region us-east-1 --output json)

cache=$(aws elasticache describe-cache-clusters --region us-east-1 --output json)

stacks=$(aws cloudformation describe-stacks --region us-east-1 --output json)

json="{\"ec2\": $ec2, \"rds\": $rds, \"elb\": $elb, \"elasticache\": $cache, \"cloudformation\": $stacks }" 

echo $json
