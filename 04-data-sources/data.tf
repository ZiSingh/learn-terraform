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

## now i need to print the output spot price

output "price" {
  value = data.aws_ec2_spot_price.example.spot_price
}

## now i need to print the id of the AWS Region

output "AWS_Region" {
  value = data.aws_ec2_spot_price.example.availability_zone
}

#spot_price_timestamp - The timestamp at which the Spot Price value was published.

output "spot_price_timestamp" {
  value = data.aws_ec2_spot_price.example.spot_price_timestamp
}

#info about the provider the Spot Price value was published.
#
#output "provider_details" {
#  value = data.aws_ec2_spot_price.example.provider
#
#}
#output "the_provider" {
#  value = data.aws_ec2_spot_price.example.provider
#}

output "Instance_Type" {
  value = data.aws_ec2_spot_price.example.instance_type
}

# to display the security group id

data "aws_security_group" "selected" {
  name = "allow-all"
}

output "sgid" {
  value = data.aws_security_group.selected.id
}

#to display the ami id here owner=account number of aws

data "aws_ami" "example" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}

output "ami" {
  value = data.aws_ami.example.id
}