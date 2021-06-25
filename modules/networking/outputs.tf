output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}

output "public_subnets_id" {
  value = "${aws_subnet.public_subnet.*.id}"
}

output "private_subnets_id" {
  value = ["${aws_subnet.private_subnet.*.id}"]
}

output "default_sg_pub_id" {
  value = "${aws_security_group.EC2-SG.id}"
}

output "default_sg_pri_id" {
  value = "${aws_security_group.RDS-SG.id}"
}

output "output_rds_db_subnet_ids" {
    description = "rds_db_subnet"
    value = aws_db_subnet_group.rds_db_subnet.id
}

output "security_groups_ids" {
  value = ["${aws_security_group.EC2-SG.id}", "${aws_security_group.RDS-SG.id}"]
}

output "public_route_table" {
  value = "${aws_route_table.public.id}"
}


output "db_subnet_group_name"{
  value = "${aws_db_subnet_group.rds_db_subnet.name}"
}

output "db_subnet_group_id"{
  value = "${aws_db_subnet_group.rds_db_subnet.id}"
}