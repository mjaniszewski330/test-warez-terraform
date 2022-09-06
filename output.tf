output "Public-IP-address-of-aws-instance-is" {
  value = "${aws_instance.example.public_ip}"
}

output "Private-IP-address-of-aws-instance-is" {
  value = "${aws_instance.example.private_ip}"
}

output "EC2-id-is" { 
  value = "${aws_instance.example.id}"
}

output "VPC-id-is" {
  value = "${aws_vpc.main.id}"
}

output "Subnet-id-is" {
  value = "${aws_subnet.main-public-1.id}"
}

output "Internet-Gateway-id-is" {
  value = "${aws_internet_gateway.main-gw.id}"
}

output "Route-table-id-is" {
  value = "${aws_route_table.main-public.id}"
}

output "Route-associations-id-is" {
  value = "${aws_route_table_association.main-public-1}"
}
