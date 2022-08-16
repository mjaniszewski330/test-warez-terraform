variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
  default = "eu-west-2"
}

# The latest Amazon Linux AMI IDs
# https://aws.amazon.com/amazon-linux-ami/
variable "AMIS" {
  type = map(string)
  default = {
    eu-west-1 = "ami-047bb4163c506cd98"
    eu-west-2 = "ami-e6768381"
    eu-west-3 = "ami-0ebc281c20e89ba4b"
  }
}

