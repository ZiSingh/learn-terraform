#how do i create a 2 EC2 instance on AWS as Sample1 & Sample2
module "sample1" {
  source = "./ec2"
  name   = "sample1"
}

module "sample2" {
  source = "./ec2"
  name   = "sample2"
}


output "public_ip_sample1" {
  value = module.sample1.public_ip
}

output "public_ip_sample2" {
  value = module.sample2.public_ip
}
