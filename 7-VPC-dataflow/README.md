# Attach Flow Log To all VPC

This demo focus on attaching flow log to all the VPC which are present.

# prerequisite
- You should have S3 bucket with name as "vpcflowlogdemo"
- For demo create two VPC and have tag as "flow-log=demo"

# Demo
- Goto manifests folder
- terraform init
- terraform validate
- terraform plan
- terraform apply -auto-approve
- this should map the flow log to the VPC which are present with tag as "flow-log=demo"

# Delete Resource 
- terraform destroy -auto-approve
- Cleanup
    - rm -rf .terraform*
    - rm -rf terraform.tfstate*