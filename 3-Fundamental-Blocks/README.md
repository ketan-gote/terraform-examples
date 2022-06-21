# Fundamental Blocks
This is categorized in 3 sections

## #1 Terraform Settings
- This configures some behaviours of Terraform itself
- Terraform Backend - Configures which state terraform should use 
- Terraform version - Specifies which version of terraform can be used in yours configuration
- Providers - specifies all of the providers required by the current module

## #2 Providers Block
- This sits between terraform CLI and respective endpoint (e.g aws cloud provider). It is heart or core of terraform
- Terraform relies on providers to interact with Remote Systems
- This configuration always belong to root module

## #3 Resource Block
- Each reource is associated with resource type which represent Intrastructure object
- How to declare the

# [Terraform Block](https://www.terraform.io/language/settings)

This was introduce in 0.13 version of terraform, it is also referred as Terraform Block, Terraform Settings or Terraform Configuration

Block consists of
 - Terraform Version *
 - Providers *
 - Terraform Backend *
 - Experimental Languages
 - Passing metadata to providers


# Demo
- Goto manifests folder
- terraform init
- terraform validate
- terraform plan
- terraform apply -auto-approve
- terraform destroy -auto-approve
- Cleanup
    - rm -rf .terraform*
    - rm -rf terraform.tfstate*