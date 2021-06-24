resource "aws_instance" "public_ec2" {
    count = "${length(var.public_ids)}"
    ami           = var.image_id
    instance_type = var.instance_type
    subnet_id     = "${element(var.public_ids, count.index)}"

    key_name      = "inesh-sre-assign"
    vpc_security_group_ids = [ var.vpc_security_group_ids ]    
    associate_public_ip_address = true

    tags = {
        Name = "ec2-main"
    }

}

/*
resource "aws_key_pair" "deployer" {
  key_name   = "helloworld"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOzyKQWNXDaiS9Zv1VlfH+n9uPwAJOWeU5FvRt8ZO92PM5fnhZO8xb3RREQIXjyomBAxK/sHL8GlHjHlSzSNzd2E8Ml6sF8Qy+Xv/eQAYGu7+0oE2EEO4yLNCZOt5LKrtBOQP50K0K5Qh8MP2AAZ8XQg6EMf7FPMpEu7v3iGkLhyccN+EN5tevJpPBFnT5o+fguTdUZQaM65yxC2sOeOWT2d8RPOFeEhfQ5KLUD9pxv1J2BHVZ2+OPt+v+o5x4qNXLW3Ptum/ra+nTFhPQaHA4n0U/bSFg5WsvXtpZJ8MJQWci9NzbxAdRAdxaU8BIrfhz5APA/4DjnHczKYGZ0WChr0cSPVEKszd2vbZEtsHmGyiisfCVqiE7ErA1VEdpG7ArhyaPs1JJ5mznFibYfhMCtQIUqSuGgYoAG5UQ6gS8c7IOIZQTeFs7Aziam7gskXjaHCbcQi5yLBvOnnVW69cCxsvbsIpzjhNzMqeimTg3iZMO+qlUJ2qTfoYi1XlLnGE= ineshreddy@Ineshs-MBP.Dlink"
}
*/

/*
output "ec2-public-ip" {
    value = aws_instance.public_ec2.public_ip
}
output "ec2-public-private-ip" {
    value = aws_instance.public_ec2.private_ip
}

output "public_ip" {
  description = "List of public IP addresses assigned to the instances"
  value       = aws_instance.public_ec2.*.public_ip
}
*/