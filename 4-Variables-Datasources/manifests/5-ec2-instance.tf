resource "aws_instance" "myTerraformEC2" {
  ami = data.aws_ami.ubuntulinux.id
  instance_type = var.instance_type
  user_data = file("${path.module}/httpserver-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-http.id   ]
  tags = {
    "Name" = "Terraform EC2 Demo Using Variables and Datasource"
  }
}