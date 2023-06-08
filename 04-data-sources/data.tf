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
  value = data.aws_ec2_spot_price.example.spot_price.
}

## now i need to print the id of the AWS Region

output "AWS Region" {
  value = data.aws_ec2_spot_price.example.availability_zone.
}

#spot_price_timestamp - The timestamp at which the Spot Price value was published.

output "spot_price_timestamp"{
  value = data.aws_ec2_spot_price.example.spot_price_timestamp.
}

#info about the provider the Spot Price value was published.

output "provider's details" {
  value = data.aws_ec2_spot_price.example.provider.

}


