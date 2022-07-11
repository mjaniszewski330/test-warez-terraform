resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  tags = { 
    Name = "terraform-xxxx-EC2"
  }

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh-terraform-mnjk.id]

  # user data script - that part will be executed when server is ready
  user_data = file("install_docker.sh")

}

