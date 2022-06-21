resource "aws_instance" "myTerraformEC2" {
  ami = "ami-068257025f72f470d"
  instance_type = "t2.micro"
  tags = {
    "Name" = "TD Http Server"
  }
  user_data = file("${path.module}/httpserver-install.sh")

}