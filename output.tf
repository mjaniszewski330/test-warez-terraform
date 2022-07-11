output "Public-IP-address-of-aws-instance-is" {
  value = "${aws_instance.example.*.public_ip}"
}

output "Private-IP-address-of-aws-instance-is" {
  value = "${aws_instance.example.*.private_ip}"
}

