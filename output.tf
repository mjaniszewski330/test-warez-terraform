output "Public_IP_address_of_aws_instance_is" {
  value = "${aws_instance.example.*.public_ip}"
}

output "Private_IP_address_of_aws_instance_is" {
  value = "${aws_instance.example.*.private_ip}"
}

