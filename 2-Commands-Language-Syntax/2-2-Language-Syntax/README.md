# Terraform Language
Main purpose is declaring the different resources of the infrastrcuture.

## Terraform Files:
- Terraform file is referred as Terraform Configuration OR Terraform Manifiests
- Configuration is stored in plain text file with .tf extension, there is also JSON based variant.
- Configuration Syntax
    - Blocks (Top level Blocks and Block within Blocks)
    - Arguments 
    - Expressions
    - Comments (Single line or Multi line)
- Terraform Configuration Block
```t
# Template
<BLOCK TYPE> "<BLOCK LABEL>" "<BLOCK LABEL>"   {
  # Block body
  <IDENTIFIER> = <EXPRESSION> # Argument
}

# AWS Example
resource "aws_instance" "ec2demo" { # BLOCK
  ami           = "ami-068257025f72f470d" # Argument
  instance_type = var.instance_type # Argument with value as expression (Variable value replaced from varibales.tf
}
```
- You can check providers specific arguments [here](https://registry.terraform.io/)


## Top Level Blocks
- Fundamental Blocks
    - Terraform Settings Block
    - Providers Block
    - Resource Block
- Variable Blocks
    - Input Variables Block
    - Output value block
    - Local value block
- Referencing Block
    - Datasource Block
    - Modules Block


