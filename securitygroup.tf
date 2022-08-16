resource "aws_security_group" "allow-ssh-terraform-xxxx" {
  vpc_id      = aws_vpc.main.id
  name        = "allow-ssh-terraform-xxxx"
  description = "security group defines security rules for ingress & egress traffic"
  
  #outcoming traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  #incoming traffic
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-ssh-terraform-xxxx"
  }
}

