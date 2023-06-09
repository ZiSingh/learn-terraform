terraform {
  backend "s3" {
    bucket = "terraform-b73"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}


output "demo" {
  value = "Hello World"
}
#resource "aws_s3_bucket" "example" {
#  bucket = "my-tf-test-bucket"
#
#  tags = {
#    Name        = "My bucket"
#    Environment = "Dev"
#  }
#}