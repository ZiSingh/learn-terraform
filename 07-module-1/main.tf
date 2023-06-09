#how do i create a 2 EC2 instance on AWS as Sample1 & Sample2
module "Sample1" {
  source = "./ec2"
  name = "sample1"
}

module "Sample2" {
  source = "./ec2"
  name = "sample2"
}