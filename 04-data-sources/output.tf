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

output "provider_details" {
  value = data.aws_ec2_spot_price.example.provider

}
output "the_provider" {
  value = data.aws_ec2_spot_price.example.provider
}
