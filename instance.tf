resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  tags = { 
    Name = "ec2-terraform-xxxx"
  }

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh-terraform-xxxx.id]

  # user data script - that part will be executed when server is ready
  user_data = file("install_docker.sh")

}

