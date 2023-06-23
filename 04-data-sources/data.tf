##suppose i want to know my instance type of price of instance
##i google for instance price terraform datasource-->
data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.medium"
  availability_zone = "us-east-1a"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}




## to display the security group id
#
data "aws_security_group" "selected" {
  name = "allow-all"
}
#
#
##to display the ami id here owner=account number of aws
#
data "aws_ami" "example" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}

## to display the vpc id
#
data "aws_vpcs" "vpcid" {
  tags = {
    name = "Default VPC"
  }
}






