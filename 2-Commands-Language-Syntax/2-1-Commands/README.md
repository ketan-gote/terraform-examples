
Terraform Workflow
- Terraform (most used commands)
	- init - Used to initialize the working directory where terraform config files are present, it will also download providers
	- validate - Validates the configuration files to validate syntactically valid
	- plan - creates an execution plan, it determines what action needs to be taken to achieve desired state of specified configuration file
	- apply - Used to apply changes requierd to achieve desired state
	- destroy - Used to destroy the terraform managed infrastructure 


- Steps to create the EC2 instance using terraform script
	- goto ec2-manifest folder
	- terraform init
	- terraform validate
	- terraform plan
	- terraform apply 
