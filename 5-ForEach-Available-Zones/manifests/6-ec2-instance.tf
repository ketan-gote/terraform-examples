resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.ubuntulinux.id
  instance_type = var.instance_type
  user_data = file("${path.module}/httpserver-install.sh")
  key_name = var.instance_keypair

  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-http.id]

  for_each = toset(keys({for az, details in data.aws_ec2_instance_type_offerings.my_ins_type: 
    az => details.instance_types if length(details.instance_types) != 0 }))
    
  availability_zone = each.key  
  tags = {
    "Name" = "TF-Demo-${each.key}"
  }
}