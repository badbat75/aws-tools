#!/bin/bash
EC2_ID=$(aws ec2 run-instances --image-id ami-0ec71c2d85268e79b --count 1 --instance-type a1.2xlarge --key-name ireland_kp --security-group-ids sg-62bbf605 sg-0385aa386131ccafb --block-device-mappings "[{\"DeviceName\":\"/dev/sdb\",\"Ebs\":{\"SnapshotId\":\"snap-089f983762145e173\"}}]" --tag-specifications 'ResourceType=instance,Tags=[{Key=build,Value=arm}]' --query 'Instances[].InstanceId[]' --output=text)
echo ${EC2_ID}
