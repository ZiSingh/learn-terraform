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

output "sgid" {
  value = data.aws_security_group.selected.id
}

##to display the default vpc id

output "VPC_id" {
  value = data.aws_vpcs.vpc.id
}

output "ami_id" {
  value = data.aws_ami.example.id
}

output "vpc_id" {
  value = data.aws_vpcs.vpc.vpc_id
}
#ata "aws_vpcs" "foo" {}
#
#data "aws_vpc" "foo" {
#  count = length(data.aws_vpcs.foo.ids)
#  id    = tolist(data.aws_vpcs.foo.ids)[count.index]
#}
#
#resource "aws_flow_log" "test_flow_log" {
#  count = length(data.aws_vpcs.foo.ids)
#
#  # ...
#  vpc_id = data.aws_vpc.foo[count.index].id
#
#  # ...
#}
#
#output "foo" {
#  value = data.aws_vpcs.foo.ids
#}